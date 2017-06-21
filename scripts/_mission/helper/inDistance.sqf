




_nextTask = _this select 2;

[
    {{_x distance getMarkerPos (_this select 0) < 20} count allPlayers > 0},

    {
        [_this select 1, "Succeeded"] call FHQ_fnc_ttSetTaskState;

        call (_this select 2);

        
    },

    [_this select 0,_this select 1,_nextTask]

] call CBA_fnc_waitUntilAndExecute;
