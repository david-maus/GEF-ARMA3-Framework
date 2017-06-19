

if (!isServer) exitWith {};

_arsenalName = _this select 0;
_arsenalCount = _this select 1;

for "_i" from 1 to _arsenalCount do {
    _car = missionNamespace getVariable (_arsenalName + str _i);
    _car addaction ["Open Virtual Arsenal", { ["Open",true] call BIS_fnc_arsenal; }];
};
