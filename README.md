###GEF-GAMING.DE ARMA 3 Mission Framework / Template

Arma 3 Mission Framework / Template für ein optimales und schnelles erstellen von Missionen für GEF-GAMING.DE


___
___Alle Scripte / Einstellungen / Variablen einstellbar und schnell aktivier/deaktiverbar___


####Inhalt
- [R3F Logistics scripts](https://forums.bistudio.com/forums/topic/170033-r3f-logistics/) - Logistik & Basebuilding Script
- [FHQ Tasktracker](https://forums.bistudio.com/forums/topic/142763-fhq-tasktracker/) - JIP & MP Taskframework
- [GFPPE Postprocess Editor](https://forums.bistudio.com/forums/topic/176057-gf-post-process-effect-editor/) - Arma3 Post Effects Live Editor für Missionen
- [scarCODE ServerInfoMenu](https://github.com/IT07/ArmA3_exile_ServerInfoMenu) - (Editiert) Server Infos beim joinen und/oder per actionmenu
- [IntLight](http://www.armaholic.com/page.php?id=25598) - (editiert) Rote / Grüne Innenbeleuchtung in Helikoptern bei Nacht
- [KP Fuel Consumption Script](https://forums.bistudio.com/forums/topic/201953-kp-fuel-consumption-script/) - Höherer Treibstoffverbrauch der Farhzeuge um Auftanken sinnvoll zu machen
- aliveSupport Helper - Eigens platzierte Units schnell und ohne Codepasting zum Support machen
- thirdpersonInBase - Erlaubt Thirdperson in markerzone/base
- DayNightTimer - Einstellen der Tag und Nachtzeit
- [VCOM AI](https://forums.bistudio.com/forums/topic/166374-vcom-ai-v20-ai-overhaul/) - Verbesserte KI
- VCOM AI disabler for Airunits - Speziell für Alive Supporthelikopter sinnvoll
- nvgOffLightON - Deaktiviert alle nvgs von Opfor und fügt Taschenlampen hinzu, auch für gespawnte units
- Vehicle Delivery script for Spyders Vehiclespawner - Bringt das angeforderte Fahrzeug mit dem Helikopter, wenn nicht möglich per Paradrop
- Taskforce Radio Config
- Virtual Arsenal Maker - Erstellt für alle Kisten die vArsenal_1,2,3.... heißen das Virtual Arsenal
- Basic und Advanced ACE Config integriert und auswählbar, kein lästiges setzen der ACE Module, es sei denn man will gezielt eine Einstellung überschreiben
- Alle AUTigerGrad's Ambient Sounds intigriert
- Respawn on Team players einstellbar
- Loadout nach Respawn wiederhegestellt
- [TPW](https://forums.bistudio.com/forums/topic/154944-tpw-mods-v20170619-enhanced-realism-and-immersion-for-arma-3-sp/) integriert - Dynamic Ambient Sounds & Music, Radiochatter & Fireflies, die Modversion von TPW muss deaktiviert sein



___

####Installation:
1. Repository downloaden
2. Eine Mission in Arma3 erstellen und abspeichern
3. Alle Dateien des Frameworks außer der mission.sqm in den eigenen erstellten Missionsordner kopieren




####Benutzung
1. Ihr findet in der init.sqf, initPlayerLocal.sqf und in der scripts\\_mission\\mission.sqf verschiedene Variablen die ihr nach euren Vorstellungen einstellen könnt
2. Eure Einstellungen / Namen / Beschreibungen der Mission in der description.ext einfügen / ändern
3. In der description.ext eure Ace-Einstellung auswählen (andere auskommentieren)


___

####Missionsscripte und Tasks

Im Ordner scripts\\_mission findet ihr eine briefing.sqf in der ihr euer briefing schreiben könnt.
In der mission.sqf im selben Ordner könnt ihr einstellen ob ihr das briefing laden wollt und ob ihr die task-sektion in
der mission.sqf benutzen wollt. Wenn ihr diese benutzen wollt könnt ihr alle eure Tasks und dazugehörigen scripte in
den Bereich der Datei (gekennzeichnet) schreiben.
