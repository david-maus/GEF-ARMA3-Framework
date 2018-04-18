/////////////////////////////////////////////////////////////////////////////////////////
//------- Mission -------
dummyBigLoadscreen         = 0;            // Aktiviert einen großen Dummy Loadscreen nach dem joinen
briefing                   = 1;            // Aktiviert die Post Effekte in der postEffects.sqf Datei
intro                      = 0;            // Aktiviert das Intro in der intro.sqf Datei
mission                    = 1;            // Führt alles in der mission.sqf aus
postEffects                = 0;            // Aktiviert die Post Effekte in der postEffects.sqf Datei

serverInfoMenu             = 0;            // Aktiviert Serverwindow

vArsenalMaker              = 1;            // besseres Arsenal für Objekte mit namen "vArsenal_1,2,3,4,5 etc."
vArsenalMakerCount         = 10;           // Anzahl der kisten. Nur erhöhen wenn benötigt, kann sonst so bleiben.


tpw                        = 1;            // Aktiviert TPW (Ambient Sound & Music, Radiochatter, Fireflies)
vcom                       = 1;            // Aktiviert die VCOM AI
dynamicFurniture           = 1;            // Activates dynamic furniture script

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Gameplay -------

respawnOnGroup             = 1;            // Respawn auf Gruppenmitgliedern

restoreLoadOut             = 1;            // Stellt das Gear vor dem Tot nachdem REspawn wieder her

fuelSystem                 = 1;            // Aktiviert das Fuel System, mehr Verbrauch in der Mission

r3fLogistic                = 0;            // Aktiviere das R3F Logistiksystem

nvgOffLightOn              = 0;            // Entfernt alle nvgs und ir Laser von Opfor, fügt Lampen hinzu

interiorLight              = 1;            // Interior Licht in Helikoptern aktivieren
interiorLightMultiply      = 5;            // Intensität des Lichtes

/////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Intel -------

timeMultiply               = 1;            // Aktiviert die custom Tag / Nacht Zeit
dayMultiply                = 4;            // Geschwindigkeit des Tages - 4 Entspricht 3 echten Stunden
nightMultiply              = 12;           // Geschwindkeit der Nacht - 12 Entspricht 1 echten Stunde

fogLimiter                 = 0;            // FogLimiter aktivieren für alive weather
fogLimiterInterval         = 900;          // Zeitinterval für die Checks
fogLimiterMax              = 0.2;          // Maximaler Fog

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Alive -------

aliveAutotaskFilter        = 0;            // Führt staticData.sqf aus. Hier werden Autotasks von Alive gefiltert


/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Settings -------

taskForceRadioConfig       = 1;            // Lade die TaskForceRadio Config

disableVCOMAIforAIR        = 1;            // Deaktiviert die VCOM AI für Lufteinheiten

aslAll                     = 1;            // Advanced SlingLoad Mod - Man kann alles slingloaden

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Debug und Co -------

postProcessEditor          = 0;            // Postprecess Editor aktivieren, sollte nur beim Missionsbau  an sein

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Camera -------

thirdPersonInBase          = 0;            // Erlaube ThirdPerson nur im Markerbereich / Geht noch nicht
thirdPersonInBaseMarker    = "blu01";     // Markername wo ThirdPerson erlaubt sein soll

/////////////////////////////////////////////////////////////////////////////////////////
