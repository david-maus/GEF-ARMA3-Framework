#include "..\scripts\other\getDateTime.sqf"
/*sleep 1;
startLoadingScreen ["Loading My Mission"];

// Ultra fast script loading while loadscreen for users

endLoadingScreen;*/
ace_hearing_disableVolumeUpdate = true;
0 fadeSound 0;

enableEnvironment [true, false];
enableRadio false;
clearRadio;

onPreloadFinished {

    [] spawn {

        disableUserInput true;






        500 cutText ["", "BLACK FADED", 999];

        sleep 7;


        titleRsc ["introLogo", "PLAIN", 3];
        titleFadeOut 3;
        sleep 12;

        titleText ["You don't have as much time with this line, but it is still quite lengthy and ever so informative.","PLAIN", 3];
        titleFadeOut 3;
        sleep 12;

        titleText ["But this line.\n\nThis line will make you pause.  This line will give you time to...\n\nthink.","PLAIN", 3];
        titleFadeOut 3;
        sleep 12;


        [
        [

        [ introDate, "<t size='1.0' font='PuristaMedium'>%1</t>", 0 ],
        [ introTime, "<t size='1.0' font='PuristaBold'>%1</t><br/>", 5 ],

        [ "South of Galati", "<t size='0.9' font='PuristaBold'>%1</t><br/>", 5 ],

        [ "Central Altis", "<t size='0.9'>%1</t><br/>", 30 ]

        ],
        -safezoneX,
        0.85,
        "<t align='center' shadow='1' size='1.0'>%1</t>"

        ] spawn BIS_fnc_typeText;



        20 fadeSound 1;
        disableUserInput false;

        "dynamicBlur" ppEffectEnable true;
        "dynamicBlur" ppEffectAdjust [6];
        "dynamicBlur" ppEffectCommit 0;
        "dynamicBlur" ppEffectAdjust [0.0];
        "dynamicBlur" ppEffectCommit 8;


        500 cutText ["", "BLACK IN", 8];








        sleep 15;
        ace_hearing_disableVolumeUpdate = false;
        enableRadio true;
        enableEnvironment [true, true];




    };
onPreloadFinished ""

};






















    /*[
     [
      ["CAMP ROGAIN,","align = 'center' shadow = '1' size = '0.7' font='PuristaBold'"],
      ["RESSUPLY POINT","align = 'center' shadow = '1' size = '0.7'","#aaaaaa"],
      ["","<br/>"],
      ["10 MINUTES LATER ...","align = 'center' shadow = '1' size = '1.0'"]
     ]
    ] spawn BIS_fnc_typeText2;*/
