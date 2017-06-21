



[
    {!alive (_this select 0)},

    {
        [_this select 1, "Succeeded"] call FHQ_fnc_ttSetTaskState;
    },

    [_this select 0,_this select 1]

] call CBA_fnc_waitUntilAndExecute;
