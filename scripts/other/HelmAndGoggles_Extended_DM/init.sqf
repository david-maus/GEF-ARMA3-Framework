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
//Hidden Identity Pack V.2
INS_gasMaskG = [
                "Mask_M50",
                "Mask_M40",
                "Mask_M40_OD",
                "avon_ct12",
                "avon_ct12_strapless",
                "avon_fm12",
                "avon_fm12_strapless",
                "avon_SF12",
                "avon_SF12_strapless"
                ];


Breath_Sound = "A3\sounds_f\characters\human-sfx\other\diver-breath-2.wss";








// Server //
if (isServer) then
{

    // AI
    [] spawn {
        {
            if(!isPlayer _x) then {
                [_x] spawn {
                    _x = _this select 0;
                    while { alive _x } do {

                    //if have helmet A
                    if ((headgear _x in INS_gasMaskH) || {(goggles _x in INS_gasMaskG)}) then {
                        sleep floor random 2;
                        [_x] spawn {
                            _x = _this select 0;
                            while {(headgear _x in INS_gasMaskH) || {(goggles _x in INS_gasMaskG)}} do {

                                _logicC = createCenter sideLogic;
                                _logicG = createGroup _logicC;
                                _objMaskSound = _logicG createUnit ["Logic", getPosasl _x, [], 0, "NONE"];
                                _objMaskSound attachTo [_x,[0,0,1.5]];
                                [_objMaskSound, "rebreather_breath"] remoteExec ["say3D", 0, false];
                                sleep 3;
                                deleteVehicle _objMaskSound;
                                deleteGroup _logicG;
                                deleteCenter _logicC;

                            };
                        };


                    };

                    //wait until player have helmet B
                    waitUntil { sleep 1; !(headgear _x in INS_gasMaskH) && {!(goggles _x in INS_gasMaskG)}};

                    //if have helmet B
                    if (!(headgear _x in INS_gasMaskH) && {!(goggles _x in INS_gasMaskG)}) then {

                    };

                    //wait until player have helmet A
                    waitUntil { sleep 1; (headgear _x in INS_gasMaskH) || {(goggles _x in INS_gasMaskG)} };

                };};
            }
        }forEach allUnits;
    };

};
// Client //
if (!isDedicated && hasInterface) then
{
    // Client functions //



    while { alive player } do {

        //if have helmet A
        if ((headgear player in INS_gasMaskH)) then {
            sleep floor random 2;
            [] spawn {
                while {(headgear player in INS_gasMaskH)} do {
                    222 cutRsc ["VQI_HALO_HELMET_CLASSII", "PLAIN", 0, false];

                    // playSound3D [Breath_Sound, player];
                    _logicC = createCenter sideLogic;
                    _logicG = createGroup _logicC;
                    _objMaskSound = _logicG createUnit ["Logic", getPosasl player, [], 0, "NONE"];
                    _objMaskSound attachTo [player,[0,0,1.5]];
                    [_objMaskSound, "rebreather_breath"] remoteExec ["say3D", 0, false];
                    uiSleep 3;
                    deleteVehicle _objMaskSound;
                    deleteGroup _logicG;
                    deleteCenter _logicC;
                    //sleep 2.7;
                };
            };


        };
        if ((goggles player in INS_gasMaskG)) then {
            sleep floor random 2;
            [] spawn {
                while {(goggles player in INS_gasMaskG)} do {
                    222 cutRsc ["GASMASKOVERLAY_CLASS", "PLAIN", 0, false];

                    // playSound3D [Breath_Sound, player];
                    _logicC = createCenter sideLogic;
                    _logicG = createGroup _logicC;
                    _objMaskSound = _logicG createUnit ["Logic", getPosasl player, [], 0, "NONE"];
                    _objMaskSound attachTo [player,[0,0,1.5]];
                    [_objMaskSound, "rebreather_breath"] remoteExec ["say3D", 0, false];
                    uiSleep 3;
                    deleteVehicle _objMaskSound;
                    deleteGroup _logicG;
                    deleteCenter _logicC;
                    //sleep 2.7;
                };
            };


        };

        //wait until player have helmet B
        waitUntil { sleep 1; !(headgear player in INS_gasMaskH) && !(goggles player in INS_gasMaskG)};

        //if have helmet B
        if (!(headgear player in INS_gasMaskH) && !(goggles player in INS_gasMaskG)) then {

            222 cutRsc ["Default", "PLAIN"];

        };

        //wait until player have helmet A
        waitUntil { sleep 1; (headgear player in INS_gasMaskH) || (goggles player in INS_gasMaskG) };

    };


};
