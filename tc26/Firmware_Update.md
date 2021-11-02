## Firmware Update

### Smartphone in Fastboot-Modus versetzen
Auf dem PC folgenden Befehl in der PowerShell ausführen:
```
.\platform-tools\adb.exe reboot recovery
```  

![Reboot Recovery Konsole](https://github.com/rolschewsky/zebra/blob/master/pics/adb_reboot_recovery.png?raw=true)

Das Smartphone führt anschließend einen Neustart durch und befindet sich dann im _Fastboot-Modus_:  

![Fastboot Modus](https://github.com/rolschewsky/zebra/blob/master/pics/fastboot-mode.png?raw=true)

Auf dem Smartphone über die Lautstäketasten (+/-) den Eintrag **Apply upgrade from ADB** auswählen und über die Ein-/Austaste bestätigen.  

![Apply Upgrade from ADB auswählen](https://github.com/rolschewsky/zebra/blob/master/pics/adb_upgrade_adb.png?raw=true)

Anschließend den Eintrag **Diff OTA Package** auswählen und bestätigen.  

![Diff OTA Package auswählen](https://github.com/rolschewsky/zebra/blob/master/pics/adv_diff_ota.png?raw=true)

Das Smartphone führt anschließend einen Neustart aus und erwartet dann eine Update-Datei.  

![Sideload Erwarte 1](https://github.com/rolschewsky/zebra/blob/master/pics/adb_erwarte_sideload_device.png?raw=true)  

![Sideload Erwate 2](https://github.com/rolschewsky/zebra/blob/master/pics/adb_erwarte_sideload.png?raw=true)

Auf dem PC jetzt folgenden Befehl in der PowerShell ausführen um die Update-Dateei zu übertragen:
```
 .\platform-tools\adb.exe sideload .\HE_DELTA_UPDATE_10-16-10.00-QG-U14-STD-HEL-04.ZIP
```  

![sideload push](https://github.com/rolschewsky/zebra/blob/master/pics/adb_sideload.png?raw=true)

Die Updatedatei wird nun auf das Gerät gespielt. Dieser Vorgang kann mehrere Minuten dauern. Sobald das Update abgeschlossen ist kann das Gerät durch den Eintrag **Reboot system now** neugestartet werden.  

![Fastboot Reboot](https://github.com/rolschewsky/zebra/blob/master/pics/fastboot_reboot.png?raw=true)
