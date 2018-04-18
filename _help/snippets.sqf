



// Spawnpoints
[west, "rspn_base_01", "FHQ 01"] call BIS_fnc_addRespawnPosition;




// Spyders Vehiclespawner SlingLoad Script - Im Codefeld eingeben und die 4 Marker setzen
[["CUP_B_CH47F_GB","vehicleSpawn","vehicleDelivery", "vehicleDespawn",this] execVM "scripts\other\slingload.sqf"]call BIS_fnc_MP;





// Alive Combat Support deaktiviere und iwedeherstellen (Empfang des Tablets simulieren z.b.)
["ALiVE_sup_combatsupport"] call ALiVE_fnc_pauseModule;
["ALiVE_sup_combatsupport"] call ALiVE_fnc_unPauseModule;




// Ojekt "einsammeln"
this removeAction myaction;
deletevehicle this;
hint "you have collected the laptop!";
exit;






// Alive Support markerAlpha
// Benutzung - Nicht benötigtes wie die artillerysachen auf "" stellen
[unitname, "CallsSign", "CAS/TRANSPORT/HYBRID/ARTY", slingload (true/false), "Containeranzahl", "ARTY HE Anzahl", "ARTY Smoke Anzahl", "ARTY GUIDED Anzahl", "ARTY Rockets Anzahl"] execVM "scripts\other\aliveSupport.sqf";

// Transport Beispiel:
[unitname, "HORSE ONE", "TRANSPORT", true, "0", "", "", "", ""] execVM "scripts\other\aliveSupport.sqf";

// CAS Beispiel:
[unitname, "STORM ONE", "CAS", false, "0", "", "", "", ""] execVM "scripts\other\aliveSupport.sqf";
