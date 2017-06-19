






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






["marker",100,11,10,3,7,-0.3,0.1,0.5,0.7,0.6,0.3,13,12,15,false,2,2.1,0.1,4,6,0,0.0,0.0] execFSM "Fog.fsm";





// Server //
if (isServer) then
{
    // Server functions //


    GAS_smoke_AIdamage = {
        //Apply damage to AIs not wearing gas mask and play choking sounds in 3d
        private ["_currPos","_aiArray","_maxtype","_sound","_odd"];
        _currPos = _this;
        _maxtype = (count Choke_Sounds);
        _odd = 1;
        // loop time based on approximate life time of smoke grenade (22 seconds)
        for '_i' from 1 to 10 do {
            _aiArray = _currPos nearEntities [["CAManBase"],15];
            {if ((isPlayer _x) || (headgear _x in INS_gasMaskH) || (goggles _x in INS_gasMaskG)) then {_aiArray = _aiArray - [_x];};} count _aiArray;
            {
                if (_aiArray isEqualTo []) exitWith {};
                if (_odd isEqualTo 1) then {
                    _sound = Choke_Sounds select (floor random _maxtype);
                    playsound3d [_sound, _x, false, getPosasl _x, 14,1,40];
                    _odd = 2;
                }else{
                    _odd = 1;
                };
                uiSleep (random 0.21);
                _x setDamage (damage _x + 0.13);
            } count _aiArray;
            uiSleep 2.1;
        };
        ToxicGasLoc = [];
    };



// Client //
if (!isDedicated && hasInterface) then
{
    // Client functions //

    GAS_smokeNear = {
        //Are we near a smoke shell
        //Are we not wearing a gas mask
        if ((headgear player in INS_gasMaskH) || {(goggles player in INS_gasMaskG)}) then {
            //We are wearing a gas mask. Return false as it does not matter if a smoke shell is near
            false
        } else {
            _smokeShell = player nearObjects ["GrenadeHand", 30];
            {
                if !(typeOf _x in INS_Gas_Grenades) then {_smokeShell = _smokeShell - [_x];};
            } count _smokeShell;

            //If there is a smoke shell
            if !(isNull (_smokeShell select 0)) then {
                //Is it at rest AND within 10 meters of the player ( will need to experiment with magnitude threshold )
                vectorMagnitudeSqr velocity (_smokeShell select 0) <= 0.5 && { (_smokeShell select 0) distance player < 10 }
            } else {
                //There is no smoke shell so Return false
                false
            };
        };
    };

    GAS_inSmoke = {
        // We are in smoke
        player setVariable ["inSmoke",true];

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
        while { alive player && not captive player && [] call GAS_smokeNear } do {
            _sound = Choke_Sounds select (floor random _maxtype);
            playsound3d [_sound, player, false, getPosasl player, 10,1,30];
            player setDamage (damage player + 0.12);
            //if(round(random(1)) isEqualTo 0) then {hint "You Should Wear a Gas Mask";};
            uiSleep 2.8123;
        };

        //We are no longer in smoke
        [] call GAS_smokeClear;
    };

    GAS_smokeClear = {
        player setVariable ["inSmoke",false];

        //Clear effects
        "dynamicBlur" ppEffectEnable true;
        "dynamicBlur" ppEffectAdjust [0];
        "dynamicBlur" ppEffectCommit 10;
        resetCamShake;
        20 fadeSound 1;
    };

    waitUntil {!isNull player && player == player};

    // player eventhandlers //

    // debug
    //player addEventHandler ["Fired", {hint format ["Fired ammo object: %1", (_this select 4)]; diag_log text format ["Fired ammo object: %1", (_this select 4)];}];};

    // broadcast to server position of newly fired gas grenade once resting
    player addEventHandler ["Fired", {
        if ((_this select 4) in INS_Gas_Grenades) then {
            (_this select 6) spawn {
                private "_grenadePos";
                waitUntil { vectorMagnitudeSqr velocity _this <= 0.5};
                _grenadePos = getPosATL _this;
                sleep 0.2;
                ToxicGasLoc = _grenadePos;
                publicVariableServer "ToxicGasLoc";
            };
        };
    }];

//Check each frame if we are near smoke
    //If we are not already flagged as in smoke AND near a smoke shell
        //Start gas effects
    smokeNearSEHID = [ "smokeNear", "onEachFrame", {
        if (!(player getVariable ["inSmoke",false]) && { [] call GAS_smokeNear }) then {
            _inSmokeThread = [] spawn GAS_inSmoke;
        };
    }] call BIS_fnc_addStackedEventHandler;
};
