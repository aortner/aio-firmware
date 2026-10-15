# AIO-Firmware

Fertige Firmware (.hex) für den AgOpenGPS AIO-Controller von [www.autosteer.cc](https://www.autosteer.cc)
(Teensy 4.1). Der Quellcode liegt nicht hier.

## Update

Am einfachsten über die Webseite des Controllers (http://<IP-des-Controllers>) im Bereich **Firmware**:

- **Update suchen** – lädt die neueste Version aus diesem Repo und spielt sie ein. Der Rechner braucht dafür
  gleichzeitig Internet (WLAN/Hotspot) und Verbindung zum Controller.
- **.hex-Datei wählen** – eine vorher heruntergeladene Datei aus diesem Repo einspielen.

Updates gehen nur im Stillstand mit ausgeschalteter Lenkung. Während des Flashens den Strom nicht abschalten.
Notfalls lässt sich der Teensy immer per USB und Teensy Loader neu flashen.

## Aufbau

Je Hardware-Variante ein Ordner, z. B. `PCB2026/`:

- `latest.json` – neueste Version (`version`, `file`, `notes`, `date`)
- `AIO_<Variante>_<Version>.hex` – Firmware-Dateien

Die Dateien werden automatisch beim Release erzeugt.

## Anleitung

Die Bedienungsanleitung liegt in [`anleitung/`](anleitung/README.md); die Webseite des Controllers verlinkt
dorthin (Button **Anleitung**).
