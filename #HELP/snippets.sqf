




[west, "rspn_base_01", "FHQ 01"] call BIS_fnc_addRespawnPosition;




// Spyders Vehiclespawner SlingLoad Script - Im Codefeld eingeben und die 4 Marker setzen
[["CUP_B_CH47F_GB","vehicleSpawn","vehicleDelivery", "vehicleDespawn",this] execVM "scripts\other\slingload.sqf"]call BIS_fnc_MP;





// Alive Combat Support deaktiviere und iwedeherstellen (Empfang des Tablets simulieren z.b.)
["ALiVE_sup_combatsupport"] call ALiVE_fnc_pauseModule;
["ALiVE_sup_combatsupport"] call ALiVE_fnc_unPauseModule;
