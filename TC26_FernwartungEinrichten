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

**Bevor die Sicherheitsfrage für Quicksupport oder Host abgeschaltet werden kann muss die entsprechende App mindestens einmal mit einem PC erfolgreich verbunden worden sein.** Damit ist gemeint das man die App mindestes einmal starten muss und man sich anschließend per TeamViwer _auf dem PC_ sich per Ferwartung mit dem Smartphone verbindet.

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

Auf dem Smartphone die **App Ops**-App öffnen, den _Shizuku mode_ auswählen und mit _continue_ bestätigen.
![AppOps Shizuku Aktivieren](https://github.com/rolschewsky/zebra/blob/master/vids/appops_shizuku.gif?raw=true)

Letzliche alle Berechtigungen zulassen 

für **TeamViewer Quicksupport**:  
![AppOps Quicksupport](https://github.com/rolschewsky/zebra/blob/master/vids/appops_quicksupport.gif?raw=true)

 und **TeamViewer Host**:  
![AppOps Host](https://github.com/rolschewsky/zebra/blob/master/vids/appops_host.gif?raw=true)
