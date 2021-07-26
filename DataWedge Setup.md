## Zebra DataWedge Setup

### Kommunikation zwischen Scanner und App konfigurieren
Damit der Scanner mit der App kommuniziert muss die Intent-Ausgabe der Zebra DataWegde App richtig konfiguriert werden. Hierzu folgende Schritte ausführen:

1. **DataWedge** App starten
2. **Profile0** auswählen
3. runterscrollen zum **Intent-Ausgabe** Abschnitt und folgende Einstellungen setzen
  * Häkchen bei **Aktiviert** setzen
  * den Wert: _de.brendelsoftware.action.SCAN_ bei **intent-Aktion** hinterlegen
  * _Intent senden_ bei **Intent-Übertragung** auswählen

![DataWegde Intent-Ausgabe konfigurieren](https://github.com/rolschewsky/zebra/blob/master/vids/datawedge_broadcast_intent.gif?raw=true)

### Interleaved 2of5 aktivieren
Das Barcode-Format Interleaved 2of5 ist nicht standardmäßig aktiv, dieser muss manuell aktiviert werden:

1. **DataWedge** App starten
2. **Profile0** auswählen
3. runterscrollen zum **Barcode-Eingabe** Abschnitt
4. **Scanner-Einstellungen konfigurieren** auswählen
5. **Decoder** auswählen
6. **Interleaved 2of5** auswählen
7. Häkchen bei **Aktiviert** setzen

![DataWegde Interleaved 2of5 konfigurieren](https://github.com/rolschewsky/zebra/blob/master/vids/datawedge_2of5.gif?raw=true)