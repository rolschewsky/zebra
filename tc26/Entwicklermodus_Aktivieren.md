## Entwicklermodus Aktivieren

Hierzu in der **Einstellungen App** nach **über das Telefon** suchen. Anschließend den Eintrag **Build-Nummer** so oft antippen bis die Meldung "Du bist jetzt Entwickler!" kommt.  
![Entwicklermodus aktivieren GIF](https://github.com/rolschewsky/zebra/blob/master/vids/Entwicklermodus.gif?raw=true)

### Android Debug Bridge (ADB) Service starten
Auf dem PC die **Windows PowerShell** öffnen (der Ausführen Dialog kann über den Tastaturkurzbefehl Win+R geöffnet werden):  
![Powershell öffnen](https://github.com/rolschewsky/zebra/blob/master/pics/powershell_ausfuehren.png?raw=true)
 
 Durch den Befehl 
```
cd C:\Brendel\Android-Werkzeuge
``` 
in den  und in den Ordner `C:\Brendel\Android-Werkzeuge` wechseln:  ![PowerShell ins Android Erkzeuge Verzeichnis wechseln](https://github.com/rolschewsky/zebra/blob/master/pics/ps_cd_android_werkzeuge.png?raw=true) und anschließend mittels 
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