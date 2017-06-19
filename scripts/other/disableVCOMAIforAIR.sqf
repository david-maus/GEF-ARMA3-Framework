










[

{
        {
        Driver _x setvariable ["NOAI",true];
        Driver _x setvariable ["NOPATHING",true];
        } foreach (vehicles select {_x isKindOf 'air'});

}, 1, []

] call CBA_fnc_addPerFrameHandler;
