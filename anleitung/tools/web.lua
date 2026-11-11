-- Pandoc filter for the website build:
--  * drop the hand-written "Inhalt"/"Contents" list (the site has its own sidebar)
--  * point links that leave the manual folder (../README.md …) to GitHub
local repo = "https://github.com/aortner/aio-firmware/blob/main/"

function Pandoc(doc)
  local out, skip = pandoc.List(), false
  for _, b in ipairs(doc.blocks) do
    if b.t == "Header" then
      local txt = pandoc.utils.stringify(b)
      skip = (txt == "Inhalt" or txt == "Contents")
      if not skip then out:insert(b) end
    elseif not skip then
      out:insert(b)
    end
  end
  doc.blocks = out
  return doc
end

-- the "🌐 website" hint is only meant for the GitHub view
function Para(el)
  if pandoc.utils.stringify(el):match("^🌐") then return {} end
end

function Link(el)
  local text = pandoc.utils.stringify(el)
  -- language links are replaced by the switcher at the top right of the site
  if text == "English version" or text == "Deutsche Version" then return {} end
  local t = el.target
  if not t:match("^%a+:") and t:match("^%.%./") then
    while t:match("^%.%./") do t = t:sub(4) end
    el.target = repo .. t
  end
  return el
end
