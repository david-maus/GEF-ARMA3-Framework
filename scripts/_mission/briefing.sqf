////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////// 							GEF MissionCreate Framework 1.0 								 ///////////
///////////                                       David Maus		                                   	 ///////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// scripts\_mission\briefing.sqf - Enthält das Briefing der Mission





if (!isServer) exitWith {};
[
	west,
		["Background",
			"Section 14 has found out that the enemy are looking to expand their influence on the Island.<br/><br/>We need to know what they are planning.<br/><br/>For this to happen Section 14 have ordered us to recover a laptop situated somewhere in this <marker name='hotel'>hotel</marker>. <br/><br/>"],

		["Mission",
			"MISSION ORDERS <br/><br/>From: Section 14 <br/>To: TOUR Platoon <br/>Classification: Urgent <br/><br/>Details: <br/><br/>Retrieve the enemy Laptop from within the <marker name='TOUR_mkr_target'>Hotel complex</marker> in order to complete your task. <br/><br/>Report in to the <marker name='TOUR_mkr_end'>Communications Officer</marker> once you are ready to end the mission. <br/><br/>END OF MESSAGE <br/><br/>"],

		["Enemy",
			"Enemy Forces: <br/><br/>2 Platoons of expertly trained Infantry.  Possible vehicle support.<br/><br/><marker name='TOUR_mkr_target'>CSAT forces are occupying the Hotel complex.</marker> <br/><br/>Friendly Forces: <br/><br/>Infantry Platoon.<br/><br/>We move out from <marker name='respawn_west'>F.O.B Ajax</marker> <br/><br/>"],

		["Credits",
			"20 [Tour] Hotel Babylon <br/>Created by: Dale [Tour] <br/>Version: 0.70 <br/><br/>Mission details: <br/><br/>Scripts Used: <br/><br/>Tour Coop Mission Template <br/>Created by: Outlander <br/><br/>Name Recognition script <br/>Created by: Deadfast <br/>Usage: Press H to turn on and off <br/><br/>Tour Respawn Control <br/>Created by: Mr.Ben <br/>Usage: Automatic on player death."]

] call FHQ_fnc_ttAddBriefing;
