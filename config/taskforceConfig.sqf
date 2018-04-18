

#include "\task_force_radio\functions\common.sqf";

if ((isServer) or (isDedicated)) then {

    //TFAR ==============================
    TF_terrain_interception_coefficient = 3; //Interferenzen durch Gelände.
    publicVariable "TF_terrain_interception_coefficient";

    TF_give_microdagr_to_soldier = false; //MicroDagr an Schützen austeilen? - ja ^ nein
    publicVariable "TF_give_microdagr_to_soldier";

    tf_give_personal_radio_to_regular_soldier = false; //Personal Radio an normalen Schützen austeilen? - ja ^ nein
    publicVariable "tf_give_personal_radio_to_regular_soldier";

    tf_no_auto_long_range_radio = true; //Long Range Radio an GrpFhr austeilen? - ja ^ nein
    publicVariable "tf_no_auto_long_range_radio";

    tf_same_sw_frequencies_for_side = false; //Selbe Freuquenzen für Fraktion? - ja ^ nein
    publicVariable "tf_same_sw_frequencies_for_side";

    _settingsSwWest = false call TFAR_fnc_generateSwSettings; //SW Freuquenzen voreinstellen.
    _settingsSwWest set [2, ["311","312","313","314","315","316","317","318"]];
    tf_freq_west = _settingsSwWest;
    publicVariable "tf_freq_west";

    _settingsLRWest = false call TFAR_fnc_generateLRSettings; //LR Freuquenzen voreinstellen.
    _settingsLRWest set [2, ["50","51","52","53","54","55","56","57"]];
    tf_freq_west_lr = _settingsLRWest;
    publicVariable "tf_freq_west_lr";
    
    //tf_radio_channel_name = "Tactical Server >> TFAR <<"; //Spieler automatisch in Channel verschieben wenn TFAR connected und Mission gestartet.
    //publicVariable "tf_radio_channel_name";
    
   	//tf_radio_channel_password = "123"; //Spieler automatisch in Channel verschieben wenn TFAR connected und Mission gestartet.
    //publicVariable "tf_radio_channel_password";
};  