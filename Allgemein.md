# Einrichtung TC26

## Vorbereitung

### Erforderliche Dateien kopieren
Auf dem PC das ZIP-Archiv herunterladen: [Android Werkzeuge.zip](https://github.com/rolschewsky/zebra/blob/master/Android%20Werkzeuge.zip?raw=true) und nach `C:\Brendel\Android Werkzeuge\` extrahieren, sodass es wie folgt aussieht:  
![Explorer: Ordnerstruktur](https://github.com/rolschewsky/zebra/blob/master/pics/explorer_android_werkzeuge.png?raw=true)

### Entwicklermodus Aktivieren
Auf dem Smartphone muss der versteckte _Entwicklermodus_ aktiviert werden. Hierzu in der **Einstellungen App** nach **über das Telefon** suchen. Anschließend den Eintrag **Build-Nummer** so oft antippen bis die Meldung "Du bist jetzt Entwickler!" kommt.  
![Entwicklermodus aktivieren GIF](https://github.com/rolschewsky/zebra/blob/master/vids/Entwicklermodus.gif?raw=true)

### Android Debug Bridge (ADB) Service starten
Auf dem PC die **Windows PowerShell** öffnen (der Ausführen Dialog kann über den Tastaturkurzbefehl Win+R geöffnet werden):  
![Powershell öffnen](https://github.com/rolschewsky/zebra/blob/master/pics/powershell_ausfuehren.png?raw=true)
 
 Durch den Befehl 
```
cd C:\Brendel\Android-Werkzeuge
``` 
in den  und in den Ordner `C:\Brendel\Android-Werkzeuge` wechseln:  ![PowerShell ins Android Erkzeuge Verzeichnis wechseln](https://github.com/rolschewsky/zebra/blob/master/pics/ps_cd_android_werkzeuge.png?raw=true)

anschließend mittels 
```
.\platform-tools\adb.exe start-server
```
den Android Debug Bridge (ADB) Server starten.  
![ADB Server starten](https://github.com/rolschewsky/zebra/blob/master/pics/ps_start_adb.png?raw=true)

Die PowerShell Konsole anschließend **nicht schließen** falls diese aus versehen im Verlauf der weiteren Installation geschlossen wurde reicht es aber aus eine neue PowerShell zu öffnen und per Befehl `cd C:\Brendel\Android-Werkzeuge` wieder in das Richtige Verzeichnis zu wechseln.

### USB-Verbindung als Dateiübertragung Konfigurieren
Auf dem Smartphone, muss die USB-Verbidnung mit dem PC als _Dateiübertragung_ konfiguriert sein. Hierzu in der **Einstellungen App** nach **USB-Einstellungen** suchen. Anschließend den Verwendungszweck der Verbindung auf **Dateiübertragung** setzen.  
![USB Einstellungen](https://github.com/rolschewsky/zebra/blob/master/vids/USB%20Einstellen.gif?raw=true) 

### USB-Debugging auf dem Gerät aktivieren
Auf dem Smartphone muss nun USB-Debugging _eingeschaltet_ werden. Hierzu in der **Einstellungen App** nach **Entwickleroptionen** suchen. Anschließend den Eintrag **USB-Debugging einschalten**. Wenn der ADB-Service läuft und die Dateiübertragung richtig konfiguriert wurde folgt sofort eine Abfrage ob USB-Debugging zugelassen werden soll. Bei dieser Abfrage den Haken bei "Von diesem Computer immer zulassen" setzen und anschließend Erlauben. Die im Dialog angezeigte Seriennummer ist dabei von PC zu PC unterschiedlich und ist hierbei unerheblich. 
![USB-Debugging einschalten](https://github.com/rolschewsky/zebra/blob/master/vids/usb_debugging_einschalten.gif?raw=true)

### Verbindung von Smartphone zu PC prüfen
Auf dem PC prüfen wir ob wir uns über ADB verbinden können hierzu den Befehl:
```
.\platform-tools\adb.exe devices -l
```
ausführen. In der folgenden Liste sollte nun der Eintrag mit der Seriennummer des verbundenen Smartphones sein.  
![ADB Geräteliste](https://github.com/rolschewsky/zebra/blob/master/pics/adb_list_devices.png?raw=true)

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

Das Smartphone führt anschließend einen Neustart und erwartet jetzt eine Update-Datei.  
![Sideload Erwarte 1](https://github.com/rolschewsky/zebra/blob/master/pics/adb_erwarte_sideload_device.png?raw=true)  
![Sideload Erwate 2](https://github.com/rolschewsky/zebra/blob/master/pics/adb_erwarte_sideload.png?raw=true)

Auf dem PC jetzt folgenden Befehl in der PowerShell ausführen um die Update-Dateei zu übertragen:
```
 .\platform-tools\adb.exe sideload .\HE_DELTA_UPDATE_10-16-10.00-QG-U14-STD-HEL-04.ZIP
```  
![sideload push](https://github.com/rolschewsky/zebra/blob/master/pics/adb_sideload.png?raw=true)

Die Updatedatei wird nun auf das Gerät gespielt. Dieser Vorgang kann mehrere Minuten dauern. Sobald das Update abgeschlossen ist kann das Gerät durch den Eintrag **Reboot system now** neugestartet werden.  
![Fastboot Reboot](https://github.com/rolschewsky/zebra/blob/master/pics/fastboot_reboot.png?raw=true)

## Fernwartung einrichten

### TeamViewer Apps installieren
Auf dem Smartphone die Apps [TeamViewer Host](https://play.google.com/store/apps/details?id=com.teamviewer.host.market&hl=de&gl=US) und [TeamViewer Quicksupport](https://play.google.com/store/apps/details?id=com.teamviewer.quicksupport.market&hl=de&gl=US) über den PlayStore installieren. Ggf. TeamViewer Host bereits konfigurieren.

### Fernsteuerung Freischalten
Auf dem Smartphone muss die Fernsteuerung per TeamViewer über spezielle Konfigurationsbarcodes freigeschaltet werden. 
Hierzu folgende PDF Herunterladen und ausdrucken: [stage_now_codes_team_viewer_v1.pdf](https://github.com/rolschewsky/zebra/blob/master/docs/stage_now_codes_team_viewer_v1.pdf?raw=true)

Anschließend die App **StageNow** starten und die Barcodes abscannen.  
![stagenow scan](https://github.com/rolschewsky/zebra/blob/master/vids/stagenow_scan.gif?raw=true)

Nun das Smartphone Neustarten und anschließend Quicksupport oder Host öffnen und testen ob die TeamViewer verbindung funktioniert.

### Android Sicherheitsabfrage abschalten
Ab Android 10 muss jeder Fernwartungszugriff bestätigt werden um dies zu deaktivieren müssen wir spezielle Administrator-Apps installieren, welche uns ermöglichen diese Sicherheitsabfragen für TeamViewer zu deaktivieren.

**Bevor die Sicherheitsfrage für  Quicksupport oder Host abgeschaltet werden kann muss die entsprechende App mindestens einmal mit einem PC erfolgreich verbunden worden sein**

Auf dem PC eine PowerShell öffnen und durch folgenden Befehl in das _Android Werkzeuge_ Verzeichnis wechseln:
```
cd 'C:\Brendel\Android Werkzeuge\'
```

Die Shizuku App per folgenden Befehl installieren:
```
.\platform-tools\adb.exe install .\shizuku-11.7.0.r600.b86c9af-release.apk
```  
![adb install shizuku](https://github.com/rolschewsky/zebra/blob/master/pics/install_shizku.png?raw=true)
 
 Jetzt muss der Shizuku-App besondere Rechte vergeben dies dies erfolgt durch den Befehl:
```
.\platform-tools\adb.exe shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh
```  
![ADB Shizuku Aktivieren](https://github.com/rolschewsky/zebra/blob/master/pics/adb_shizuku_enable.png?raw=true)

Nun _App Ops_ installieren 
```
.\platform-tools\adb.exe install .\appops-v5.4.3.r1396.594f8536.apk
```  
![AppOps über ADB Installieren](https://github.com/rolschewsky/zebra/blob/master/pics/adb_install_appops.png?raw=true)

Auf dem Smartphone die **App Ops**-App öffnen und auf _Shizuku mode_ stellen.
![AppOps Shizuku Aktivieren](https://github.com/rolschewsky/zebra/blob/master/vids/appops_shizuku.gif?raw=true)

Letzliche alle Berechtigungen zulassen 

für **TeamViewer Quicksupport**:  
![AppOps Quicksupport](https://github.com/rolschewsky/zebra/blob/master/vids/appops_quicksupport.gif?raw=true)

 und **TeamViewer Host**:  
![AppOps Host](https://github.com/rolschewsky/zebra/blob/master/vids/appops_host.gif?raw=true)

## Abschluss
Nach einem kompletten Neustart den Entwicklermodus deaktivieren:  
![Entwicklermodus abschalten](https://github.com/rolschewsky/zebra/blob/master/vids/entwicklermodus_abschalten.gif?raw=true)
