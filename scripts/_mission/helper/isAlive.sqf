




_nextTask = _this select 2;

[
    {!alive (_this select 0)},

    {
        [_this select 1, "Succeeded"] call FHQ_fnc_ttSetTaskState;


        if (isNil (_this select 2)) then {

        }
        else
        {
            call (_this select 2);
        };


    },

    [_this select 0,_this select 1,_nextTask]

] call CBA_fnc_waitUntilAndExecute;
