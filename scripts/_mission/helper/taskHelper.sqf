_taskHelper =    {

                _taskComplete = _this select 0;

                _string = _this select 1;

                _taskID = _this select 2;

                _nextTask = _this select 3;

                _coderAfter = _this select 4;



                _string = _taskComplete + _string;

                [



                    {call compile (_this select 1)},

                    {


                        [_this select 2, "Succeeded"] call FHQ_fnc_ttSetTaskState;


                        if (!isNil (_this select 3)) then {
                            call (_this select 3);
                        }
                        else
                        {

                        };

                        if ((_this select 4) == "") then {

                        }
                        else
                        {
                            call compile (_this select 4);
                        };


                    },

                    [_taskComplete,_string,_taskID,_nextTask,_coderAfter]

                ] call CBA_fnc_waitUntilAndExecute;

            };
