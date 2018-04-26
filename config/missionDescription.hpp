/////////////////////////////////////////////////////////////////////////////////////////
//------- Missionsbeschreibung -------

// Author
author                     = "David Maus";

// Missionsname
onLoadName                 = "Zero Dark Thirty";

// Missionsbeschreibung (wird unter dem LadeScreen angezeigt)
onLoadMission              = "Hold your breath";

// Missions Ladebild (z.b. 2048px x 1024px)
loadScreen                 = "media\images\loadScreen.jpg";

// Missionsbeschreibung in der Missionsauswahl
overviewText               = "Coming Soon";

// Missionsbeschreibung um die Mission feizuschalten
overviewTextLocked         = "";

// Missionsbild in der Missionsauswahl
overviewPicture            = "media\images\loadScreen.jpg";

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Spielsettings -------

enableDebugConsole         = 1;         // 0-only in editor / 1-SP and admins / 2-everyone
saving                     = 0;         // Deaktiviert das Speichern (SP only)
disabledAI                 = 1;         // Deaktiviert die KI der Playerslots
ShowGPS                    = 0;         // Deaktiviert das GPS Minfenster

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
//------- Respawn -------

respawn                    = 3;
respawnDialog              = 0;
respawnTemplates[]         = {"MenuPosition", "Tickets"};
respawnDelay               = 30;
respawnOnStart             = 0;
respawnButton              = 1;
aikills                    = 1;
joinUnassigned             = 0;



class Header
{
    gameType =  Coop;
    minPlayers =  1;
    maxPlayers = 12;
};
