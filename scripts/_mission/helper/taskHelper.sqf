_taskHelper =    {



                _string = _this select 0;

                _taskID = _this select 1;

                _nextTask = _this select 2;

                _coderAfter = _this select 3;


                [



                    {call compile (_this select 0)},

                    {


                        [_this select 1, "Succeeded"] call FHQ_fnc_ttSetTaskState;


                        if (isNil (_this select 2)) then {

                        }
                        else
                        {
                            call (_this select 2);
                        };

                        if ((_this select 3) == "") then {

                        }
                        else
                        {
                            call compile (_this select 3);
                        };


                    },

                    [_string,_taskID,_nextTask,_coderAfter]

                ] call CBA_fnc_waitUntilAndExecute;

            };
