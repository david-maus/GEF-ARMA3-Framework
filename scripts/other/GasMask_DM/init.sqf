
// All Headgear to use as Gasmask
INS_gasMaskH = [
                "H_CrewHelmetHeli_B",
                "H_CrewHelmetHeli_O",
                "H_CrewHelmetHeli_I",
                "H_PilotHelmetFighter_B",
                "H_PilotHelmetFighter_O",
                "H_PilotHelmetFighter_I"
                ];

// All Goggles to use as Gasmask
//Hidden Identity Pack V.3
INS_gasMaskG = [
                "Mask_M50",
                "Mask_M40",
                "Mask_M40_OD"
                ];

Choke_Sounds = [
    "A3\Sounds_f\characters\human-sfx\Person0\P0_choke_02.wss",
    "A3\Sounds_f\characters\human-sfx\Person0\P0_choke_03.wss",
    "A3\Sounds_f\characters\human-sfx\Person0\P0_choke_04.wss",
    "A3\Sounds_f\characters\human-sfx\Person1\P1_choke_04.wss",
    "A3\Sounds_f\characters\human-sfx\Person2\P2_choke_04.wss",
    "A3\Sounds_f\characters\human-sfx\Person2\P2_choke_05.wss",
    "A3\Sounds_f\characters\human-sfx\Person3\P3_choke_02.wss",
    "A3\Sounds_f\characters\human-sfx\P06\Soundbreathinjured_Max_2.wss",
    "A3\Sounds_f\characters\human-sfx\P05\Soundbreathinjured_Max_5.wss"
];


ACE_ENABLED_CHECK = false;
if (isClass (configFile >> "CfgPatches" >> "ace_main")) then {
    ACE_ENABLED_CHECK = true;
};




_gasZoneName = _this select 0;
_gasZoneDynamicName = _this select 1;


 GasDynamicMarkers = [];
  GasZoneCond = '';
{
    private "_a";
  _a = toArray _x;


      if (toString _a find _gasZoneName >= 0 ) then {

         _markerSize = getMarkerSize _x select 0;
         _x setMarkerAlpha 0;
        null=[_x,_markerSize,1,7,2,5,-0.3,0.1,0.3,0.7,0.6,0.2,13,9,13,false,0,0,0,0,0,0,3.5,17.5] execFSM "scripts\other\GasMask_DM\Fog.fsm";
        GasZoneCond = GasZoneCond + 'player distance getMarkerPos "' + _x + '" < ' + str _markerSize + ' || '
  };

} forEach allMapMarkers;



    {
        private "_a";
      _a = toArray _x;

      if (toString _a find _gasZoneDynamicName >= 0 ) then {
         player setVariable [_x,false];
         _x setMarkerAlpha 0;
         GasDynamicMarkers pushBack _x;
      }

    } forEach allMapMarkers;






// Server //
if (isServer) then
{

    // AI




        //While were in smoke
        /*{
            if(!isPlayer _x) then {
                while { alive _x && not captive _x && [] call GAS_inZoneAI } do {
                    _sound = Choke_Sounds select (floor random _maxtype);
                    playsound3d [_sound, _x, false, getPosasl _x, 10,1,30];
                    _x setDamage (damage _x + 0.01);
                    //if(round(random(1)) isEqualTo 0) then {hint "You Should Wear a Gas Mask";};
                    uiSleep 2.8123;
                };
            }
        }forEach allUnits;*/






};
// Client //
if (!isDedicated && hasInterface) then
{
    // Client functions //

    GAS_Damage = {
        player setVariable ["inGas",true];

        private ["_maxtype","_sound"];
        _maxtype = (count Choke_Sounds);

        //Do effects
        "dynamicBlur" ppEffectEnable true;
        "dynamicBlur" ppEffectAdjust [12];
        "dynamicBlur" ppEffectCommit 5;
        enableCamShake true;
        addCamShake [10, 45, 10];
        5 fadeSound 0.1;

        //While were in smoke
        while { alive player && not captive player && [] call GAS_inZone } do {
            _sound = Choke_Sounds select (floor random _maxtype);
            playsound3d [_sound, player, false, getPosasl player, 10,1,30];

            if (ACE_ENABLED_CHECK) then {
                [player, 0.1, "head", "unknown"] call ace_medical_fnc_addDamageToUnit;
            } else {
                player setDamage (damage player + 0.1);
            };

            uiSleep 3;
        };

        //We are no longer in smoke
        [] call GAS_Clear;

    };

    GAS_Clear = {
        player setVariable ["inGas",false];

        //Clear effects
        "dynamicBlur" ppEffectEnable true;
        "dynamicBlur" ppEffectAdjust [0];
        "dynamicBlur" ppEffectCommit 10;
        resetCamShake;
        20 fadeSound 1;
    };

    GAS_inZone = {
        //Are we near a smoke shell
        //Are we not wearing a gas mask
        if ((headgear player in INS_gasMaskH) || {(goggles player in INS_gasMaskG)}) then {
            //We are wearing a gas mask. Return false as it does not matter if a smoke shell is near
            false
        } else {
            //If there is a smoke shell
            if (call compile (GasZoneCond)) then {
                //Is it at rest AND within 10 meters of the player ( will need to experiment with magnitude threshold )
                true
            } else {
                //There is no smoke shell so Return false
                false
            };
        };
    };

    CreateGasZone = {
        GasDynamicZone = _this select 0;
        player setVariable [GasDynamicZone,false];
        _markerSize = getMarkerSize GasDynamicZone select 0;
       null=[GasDynamicZone,_markerSize,1,7,2,5,-0.3,0.1,0.3,0.7,0.6,0.2,13,9,13,false,0,0,0,0,0,0,3.5,17.5] execFSM "scripts\other\GasMask_DM\Fog.fsm";
       GasZoneCond = GasZoneCond + 'player distance getMarkerPos "' + GasDynamicZone + '" < ' + str _markerSize + ' || '
    };


    //Check each frame if we are near smoke
        //If we are not already flagged as in smoke AND near a smoke shell
            //Start gas effects
        smokeNearSEHID = [ "smokeNear", "onEachFrame", {
            if (!(player getVariable ["inGas",false]) && { [] call GAS_inZone }) then {
                _inSmokeThread = [] spawn GAS_Damage;
            };
            {
                if ((player getVariable [_x,true])) then {
                        [_x] call CreateGasZone;
                };
            } forEach GasDynamicMarkers;

        }] call BIS_fnc_addStackedEventHandler;


};
