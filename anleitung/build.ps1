# Builds the AIO manual website (DE + EN) for GitHub Pages into _site/.
#   site root   = German manual (README.md), images in bilder/
#   site en/    = English manual (en/README.md)
#   -Preview    : additionally opens the German page in the default browser
param([switch]$Preview)

$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
$site = Join-Path $root '_site'
if (Test-Path $site) { Remove-Item -Recurse -Force $site }
New-Item -ItemType Directory -Force (Join-Path $site 'en') | Out-Null
Copy-Item -Recurse (Join-Path $root 'bilder') (Join-Path $site 'bilder') -Exclude 'pcb fotosneu'
if (Test-Path (Join-Path $site 'bilder/pcb fotosneu')) { Remove-Item -Recurse -Force (Join-Path $site 'bilder/pcb fotosneu') }
Copy-Item (Join-Path $root 'tools/style.css') (Join-Path $site 'style.css')
Set-Content -Encoding utf8 (Join-Path $site '.nojekyll') ''

$pages = @(
  @{ src = 'README.md';    out = 'index.html';    css = 'style.css';    toc = 'Inhalt';   title = 'AIO-Controller – Anleitung';  lang = 'de'; sw = '<a href="en/">English</a>' }
  @{ src = 'en/README.md'; out = 'en/index.html'; css = '../style.css'; toc = 'Contents'; title = 'AIO Controller – Manual';     lang = 'en'; sw = '<a href="../">Deutsch</a>' }
)
foreach ($p in $pages) {
  $switch = Join-Path $site 'switch.html'
  Set-Content -Encoding utf8 $switch "<div class=`"lang`">$($p.sw)</div>"
  pandoc (Join-Path $root $p.src) `
    --from gfm --to html5 --standalone `
    --shift-heading-level-by=-1 `
    --metadata "title=$($p.title)" --metadata "lang=$($p.lang)" `
    --toc --toc-depth=2 --metadata "toc-title=$($p.toc)" `
    --lua-filter (Join-Path $root 'tools/web.lua') `
    --css $p.css `
    --include-before-body $switch `
    --include-after-body (Join-Path $root 'tools/toc.html') `
    -o (Join-Path $site $p.out)
  Remove-Item $switch
  Write-Host "HTML: $(Join-Path $site $p.out)"
}
if ($Preview) { Start-Process (Join-Path $site 'index.html') }
