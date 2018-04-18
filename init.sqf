/////////////////////////////////////////////////////////////////////////////////////////
///////////                   GEF MissionCreate Framework 1.0
///////////                            David Maus
/////////////////////////////////////////////////////////////////////////////////////////
// init.sqf - Wird beim Start der Mission von Client und Server ausgeführt


#include "config\missionConfig.sqf"


/////////////////////////////////////////////////////////////////////////////////////////
// -------------------------------------- Scriptausführung
/////////////////////////////////////////////////////////////////////////////////////////
root = parsingNamespace getVariable "MISSION_ROOT";
enableSaving [ false, false ]; // Disable Save und Autosave







/////////////////////////////////////////////////////////////////////////////////////////
/////////// R3F Logistics initalisieren
if (r3fLogistic == 1) then
{
[] execVM "scripts\other\R3F_LOG\init.sqf";
};
/////////////////////////////////////////////////////////////////////////////////////////





/////////////////////////////////////////////////////////////////////////////////////////
/////////// Server Info Menu aktivieren
if (serverInfoMenu == 1) then
{
[] ExecVM "scripts\other\scarCODE\ServerInfoMenu\sqf\initLocal.sqf"; // scarCODE ServerInfoMenu
};
/////////////////////////////////////////////////////////////////////////////////////////




/////////////////////////////////////////////////////////////////////////////////////////
/////////// Postprocess Editor initalisieren
if (mission == 1) then
{
[] execVM "mission\mission.sqf";
};
/////////////////////////////////////////////////////////////////////////////////////////



/////////////////////////////////////////////////////////////////////////////////////////
/////////// Postprocess Editor initalisieren
if (briefing == 1) then
{
[] execVM "mission\briefing.sqf";
};
/////////////////////////////////////////////////////////////////////////////////////////




/////////////////////////////////////////////////////////////////////////////////////////
/////////////////// Intro
if (intro == 1) then
{
[] execVM "mission\intro.sqf";
};
/////////////////////////////////////////////////////////////////////////////////////////




/////////////////////////////////////////////////////////////////////////////////////////
/////////////////// PostEffects
if (postEffects == 1) then
{
[] execVM "config\missionColor.sqf";
};
/////////////////////////////////////////////////////////////////////////////////////////




/////////////////////////////////////////////////////////////////////////////////////////
/////////// Postprocess Editor initalisieren
if (postProcessEditor == 1) then
{
[] execVM "scripts\other\GFPPE\GFPPE_init.sqf";
};
/////////////////////////////////////////////////////////////////////////////////////////




/////////////////////////////////////////////////////////////////////////////////////////
/////////// Alive Auto-Tasks filtern
if (aliveAutotaskFilter == 1) then
{
[] execVM "staticData.sqf";
};
/////////////////////////////////////////////////////////////////////////////////////////




/////////////////////////////////////////////////////////////////////////////////////////
/////////// Advanced Slingloading (Mod) Einstellungen
if (aslAll == 1) then
{
ASL_SLING_RULES_OVERRIDE = [
      ["All","CAN_SLING","All"]
];

ASL_HEAVY_LIFTING_ENABLED = true;
};
/////////////////////////////////////////////////////////////////////////////////////////




/////////////////////////////////////////////////////////////////////////////////////////
/////////// Day & Night Time Multiplicator
/////////// [DayMultiply,NightMultiply] execVM "scripts\other\DayNightTimer.sqf";
if (timeMultiply == 1) then
{
[dayMultiply,nightMultiply] execVM "scripts\other\DayNightTimer.sqf";
};
/////////////////////////////////////////////////////////////////////////////////////////




/////////////////////////////////////////////////////////////////////////////////////////
/////////// Virtual Arsenal mit Insignia, Faces und Voice auf alle Kisten mit angegebenen Namen
/////////// ["Name der Kiste mit Zahl",Anzahl der Kisten)] execVM "scripts\other\vArsenalMaker.sqf";
if (vArsenalMaker == 1) then
{
["vArsenal_",vArsenalMakerCount] execVM "scripts\other\vArsenalMaker.sqf";
};
/////////////////////////////////////////////////////////////////////////////////////////




/////////////////////////////////////////////////////////////////////////////////////////
/////////// TASK FORCE RADIO Config
/////////// Hier Task Force Radio einstellen bei Bedarf
if (taskForceRadioConfig == 1) then
{
[] execVM "config\taskforceConfig.sqf";
};
/////////////////////////////////////////////////////////////////////////////////////////





/////////////////////////////////////////////////////////////////////////////////////////
/////////////////// Entfernt alle nvgs und Ir Laser von Opfor im 30 sekunden Interval
if (vcom == 1) then
{
If (isServer || !(hasinterface) ) then {[] execVM "VCOMAI\init.sqf";}
};
/////////////////////////////////////////////////////////////////////////////////////////




/////////////////////////////////////////////////////////////////////////////////////////
/////////// TASK FORCE RADIO Config
/////////// Hier Task Force Radio einstellen bei Bedarf
if (disableVCOMAIforAIR == 1) then
{
[] execVM "scripts\other\disableVCOMAIforAIR.sqf";
};
/////////////////////////////////////////////////////////////////////////////////////////




/////////////////////////////////////////////////////////////////////////////////////////
/////////////////// Rotes Interieur Licht für Laderäume etc. in Helis z.b.
/////////////////// [LichtMultiplier] execVM "scripts\other\IntLight.sqf";
if (interiorLight == 1) then
{
[interiorLightMultiply] execVM "scripts\other\IntLight.sqf";
};
/////////////////////////////////////////////////////////////////////////////////////////




/////////////////////////////////////////////////////////////////////////////////////////
/////////////////// Foglimiter (Alive Missionen mit dem Weather Modul können zu starken Nebel erzeugen)
/////////////////// [Zeitinterval der Checks, Maximaler Nebel] execVM "scripts\other\FogLimiter.sqf";
if (fogLimiter == 1) then
{
[fogLimiterInterval, fogLimiterMax] execVM "scripts\other\FogLimiter.sqf";
};
/////////////////////////////////////////////////////////////////////////////////////////




/////////////////////////////////////////////////////////////////////////////////////////
/////////////////// ThirdPerson nur in der Zone (z.b. Basis) erlaubt
/////////////////// ["Markername"] execVM "scripts\other\CameraView.sqf";
if (thirdPersonInBase == 1) then
{
[thirdPersonInBaseMarker] execVM "scripts\other\CameraView.sqf";
};
/////////////////////////////////////////////////////////////////////////////////////////




/////////////////////////////////////////////////////////////////////////////////////////
/////////////////// Entfernt alle nvgs und Ir Laser von Opfor im 30 sekunden Interval
if (nvgOffLightOn == 1) then
{
[] execVM "scripts\other\nvgOffLightsOn.sqf";
};
/////////////////////////////////////////////////////////////////////////////////////////





/////////////////////////////////////////////////////////////////////////////////////////
/////////////////// Entfernt alle nvgs und Ir Laser von Opfor im 30 sekunden Interval
if (tpw == 1) then
{
[[""]] execvm "scripts\other\TPW\tpw_core.sqf";
[60,1,0] execvm "scripts\other\TPW\tpw_radio.sqf";
[1,1,1,1,1,0,0,0] execVM "scripts\other\TPW\tpw_soap.sqf";
[4,18,5,25,5,50,5,0.1,[250,220,100],0.8,0.05,1,0.075] execvm "scripts\other\TPW\tpw_fireflies.sqf";
};
/////////////////////////////////////////////////////////////////////////////////////////





















/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
// Hier unten anderen Code und andere Scripte ausführen
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////
