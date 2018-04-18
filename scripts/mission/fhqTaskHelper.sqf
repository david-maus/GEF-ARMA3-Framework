taskFunc =    {

                _taskComplete = _this select 0;

                _string = _this select 1;

                _taskID = _this select 2;

                _nextTask = _this select 3;

                _coderAfter = _this select 4;



                _stringHelp = "";
                _nextTaskHelp = "";

                if ((_taskComplete) == "") then {
                    _stringHelp = "";
                }
                else
                {
                    _stringHelp = " && ";
                };

                if ((_nextTask) == "") then {
                    _nextTaskHelp = "";
                }
                else
                {
                    _nextTaskHelp = "call ";
                };



                _nextTask = _nextTaskHelp + _nextTask;
                _string = _taskComplete + _stringHelp + _string;


                [



                    {call compile (_this select 1)},

                    {

                        [_this select 2, "Succeeded"] call FHQ_fnc_ttSetTaskState;


                        if ((_this select 3) == "") then {


                        }
                        else
                        {
                            call compile (_this select 3);
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





addTask =    {

            [
            _this select 0,

                [
                _this select 1,
                _this select 2,
                _this select 3,
                _this select 4,
                _this select 5,
                _this select 6,
                _this select 7
                ]

            ] call FHQ_fnc_ttAddTasks;
            };
