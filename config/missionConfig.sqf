

/////////////////////////////////////////////////////////////////////////////////////////
//------- Mission -------

BigLoadscreen              = 0;                     // Aktiviert einen großen Dummy Loadscreen nach dem joinen
BigLoadscreenTime          = 10;                    // Dauer des Big LoadScreens
briefing                   = 1;                     // Aktiviert das Briefing
intro                      = 0;                     // Aktiviert das Intro
mission                    = 1;                     // Führt alles in der mission.sqf aus
postEffects                = 0;                     // Aktiviert die Post Effekte

serverInfoMenu             = 0;                     // Aktiviert das Serverwindow beim joinen

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Gameplay -------

respawnOnGroup             = 1;                     // Respawn auf Gruppenmitgliedern
restoreLoadOut             = 1;                     // Stellt das Gear vor dem Tot nachdem Respawn wieder her

fuelSystem                 = 1;                     // Aktiviert das Fuel System, mehr Verbrauch in der Mission
fuelStanding               = 180;                   // Min. - Zeit bis der Tank leer ist bei stehendem Fahrzeug
fuelDriving                = 60;                    // Min. - Zeit bis der Tank leer ist bei normal fahrendem Fahrzeug
fuelDrivingMax             = 40;                    // Min. - Zeit bis der Tank leer ist bei schnell fahrendem Fahrzeug

r3fLogistic                = 0;                     // Aktiviere das R3F Logistiksystem

interiorLight              = 1;                     // Interior Licht in Helikoptern aktivieren
interiorLightMultiply      = 5;                     // Intensität des Lichtes

HelmGogglesEFX             = 1;                     // Aktiviert Helm und Gasmasken Sounds / Overlays

GasZone                    = 1;                     // Aktiviert das GasSkript
GasZoneMarkerName          = 'GasZone_';            // GasZone Markername ohne Nummer - Hier ist sofort Gas - Beispiel im Editor: GasZone_1
GasZoneDynamicMarkerName   = 'GasZoneDynamic_';     // GasZoneDynamic Markername ohne Nummer - Hier kann Gas während der Mission entstehen - Beispiel im Editor: GasZone_1 - Aktivierung:

HaloStart                  = 0;                     // Aktiviert den Halo Start in der Mission
HaloStartName              = 'HaloStart';           // Markername für den Halo Start
HaloTargetName             = 'HaloTarget';          // Markername für die Landezone (HUD Overlay im Helm)
HaloStartHeight            = 1500;                  // Halo Start Höhe in Meter - ASL
HaloCargoOpenTime          = 14;                    // Sek. - Zeit bis die Cargotür öffnet und Green Light erscheint

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- AI -------

vcom                       = 1;                     // Aktiviert die VCOM AI
disableVCOMAIforAIR        = 1;                     // Deaktiviert die VCOM AI für Lufteinheiten

nvgOffLightOn              = 0;                     // Entfernt alle NVGs und IR Laser von Opfor und fügt Lampen hinzu

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Intel -------

timeMultiply               = 1;                     // Aktiviert die custom Tag / Nacht Zeit
dayMultiply                = 4;                     // Geschwindigkeit des Tages - 4 Entspricht 3 echten Stunden
nightMultiply              = 12;                    // Geschwindkeit der Nacht - 12 Entspricht 1 echten Stunde

fogLimiter                 = 0;                     // FogLimiter aktivieren für Alive weather
fogLimiterInterval         = 900;                   // Zeitinterval für die Checks
fogLimiterMax              = 0.2;                   // Maximaler Fog

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Environment -------

tpw                        = 1;                     // Aktiviert TPW (Ambient Sound & Music, Radiochatter, Fireflies)
dynamicFurniture           = 0;                     // Activates dynamic furniture script, Dynamische Möbeleinrichtung in Häusern
SafeZoneMapObjs            = 1;                     // Aktiviert 'SafeZone_1,2,3,4,5 etc.' Marker. Hausobjekte können nicht zerstört werden

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Helper -------

vArsenalMaker              = 1;                     // ACE Arsenal für Objekte mit namen "vArsenal_1,2,3,4,5 etc."

DeadBodyMaker              = 1;                     // Tote für Units mit Namen "DeadBody_1,2,3,4,5 etc."

aslAll                     = 1;                     // Advanced SlingLoad Mod - Man kann alles slingloaden

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Alive -------

aliveConfig                = 0;                     // Aktiviert das filtern der Alive AutoTasks

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Settings -------

taskForceRadioConfig       = 1;                     // Lade die TaskForceRadio Config

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Debug und Co -------

postProcessEditor          = 0;                     // Postprecess Editor aktivieren, sollte nur beim Missionsbau an sein um PostProcess Effekte zu bekommen

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Camera -------

thirdPersonInBase          = 0;                     // Erlaube ThirdPerson nur im Markerbereich / Geht noch nicht
thirdPersonInBaseMarker    = 'blu01';               // Markername wo ThirdPerson erlaubt sein soll

/////////////////////////////////////////////////////////////////////////////////////////
