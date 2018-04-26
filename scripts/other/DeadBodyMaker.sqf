

if (!isServer) exitWith {};




    DeadAni = [
        "[KIA_gunner_standup01]",
        "[KIA_passenger_boat_holdleft]",
        "[KIA_gunner_static_low01]",
        "[KIA_driver_boat01]",
        "[KIA_passenger_injured_medevac_truck01]",
        "[KIA_passenger_injured_medevac_truck03]",
        "[KIA_passenger_injured_medevac_truck02]",
        "[Acts_SittingWounded_in]"
    ];




_deadBodyName = _this select 0;
_deadBodyCount = _this select 1;


_check = _deadBodyName + str 1;


if (isNil _check) then {

}
else
{
    for "_i" from 1 to _deadBodyCount do {
        _car = missionNamespace getVariable (_deadBodyName + str _i);
        _checkFor = _deadBodyName + str _i;

        if (isNil _checkFor) exitWith {};
        removeFromRemainsCollector [_car];
        _car setCaptive true;
        _car setDamage 1;
        0 = _car spawn {
            waitUntil {time > 0 };
            _maxtype = (count DeadAni);
            _ani = DeadAni select (floor random _maxtype);
            _this switchMove _ani;
        };



    };
};
