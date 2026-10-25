# Downloads

Software, Firmware und Konfigurationen rund um GNSS-Empfänger und AgOpenGPS von
[www.autosteer.cc](https://www.autosteer.cc). Zum Herunterladen eine Datei anklicken und rechts oben
auf **Download** (Pfeil-Symbol) klicken.

## u-blox F9P (Ardusimple)

- **u-center** zur Konfiguration des F9P: direkt bei u-blox herunterladen –
  [u-center v24.10](https://content.u-blox.com/sites/default/files/2024-11/u-centersetup_v24.10.zip)
- [`ublox-f9p/firmware/firmware132.zip`](ublox-f9p/firmware/firmware132.zip) – Standard-Firmware 1.32 (HPG 1.32)
- Konfigurationen für Firmware 1.32 in [`ublox-f9p/konfiguration/`](ublox-f9p/konfiguration/):
  - [`agoopenggps_rover_aortner_10hzz_gps_glo_gal_highprec_cog_fw132.txt`](ublox-f9p/konfiguration/agoopenggps_rover_aortner_10hzz_gps_glo_gal_highprec_cog_fw132.txt) – AgOpenGPS
  - [`ortner_cerea_beidu_disable_config_ublox_f9p_fw1.32.txt`](ublox-f9p/konfiguration/ortner_cerea_beidu_disable_config_ublox_f9p_fw1.32.txt) – Cerea
  - [`bluetooth_agopen_rover_aortner_10hzz_gps_glo_gal__bei_highprec_cog.txt`](ublox-f9p/konfiguration/bluetooth_agopen_rover_aortner_10hzz_gps_glo_gal__bei_highprec_cog.txt) – AgOpenGPS über Bluetooth
  - [`basestation_fw132.txt`](ublox-f9p/konfiguration/basestation_fw132.txt) – Basisstation (Survey-in 2 min / 2,5 m)

Wichtig: Die Konfigurationen passen zur Firmware **1.32**. Neuere Firmware (z. B. 1.51) erlaubt nur bis 8 Hz.

## ByNav

- [`bynav/software/by-center-1.8.50.zip`](bynav/software/by-center-1.8.50.zip) – By Center 1.8.50 (Android-App)
- [`bynav/software/by_connect.zip`](bynav/software/by_connect.zip) – BY_Connect (Windows)
- [`bynav/firmware/m2_20250926.zip`](bynav/firmware/m2_20250926.zip) – Firmware M2 vom 26.09.2025

## Septentrio

- [`septentrio/mosaic-h_3607411_current_2021-07-26-215202.txt`](septentrio/mosaic-h_3607411_current_2021-07-26-215202.txt) –
  Konfiguration für mosaic-H (Dual-Antenne) mit AgOpenGPS

## Werkzeuge

- [`tools/aogconfigomatic-3.zip`](tools/aogconfigomatic-3.zip) – AOGConfigOMatic zum Flashen und Konfigurieren
  (Projekt: [lansalot/AOGConfigOMatic](https://github.com/lansalot/AOGConfigOMatic))
