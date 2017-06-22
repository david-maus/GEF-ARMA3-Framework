

if (!isServer) exitWith {};

_arsenalName = _this select 0;
_arsenalCount = _this select 1;


_check = _arsenalName + str 1;


if (isNil _check) then {

}
else
{
    for "_i" from 1 to _arsenalCount do {
        _car = missionNamespace getVariable (_arsenalName + str _i);
        _checkFor = _arsenalName + str _i;

        if (isNil _checkFor) exitWith {};

        _car addaction ["Open Virtual Arsenal", { ["Open",true] call BIS_fnc_arsenal; }];




    };
};
