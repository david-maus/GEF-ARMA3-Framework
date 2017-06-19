
if (!isServer) exitWith {};


_unitName = _this select 0;
_call = _this select 1;
_type = _this select 2;
_slingload = _this select 3;
_container = _this select 4;
_artyHE = _this select 5;
_artySMOKE = _this select 6;
_artyGUIDED = _this select 7;
_artyROCKETS = _this select 8;



if (_type == "CAS") then

	{


	this setvariable ["CS_TYPE","CAS"];
	this setvariable ["CS_CALLSIGN",_call];
	this setvariable ["CS_HEIGHT",_height];
	this setVariable ["CS_SLINGLOADING", _slingload];



	}

if (_type == "TRANSPORT") then

	{

this setvariable ["CS_TYPE","TRANSPORT"];
this setvariable ["CS_CALLSIGN",_call];
this setvariable ["CS_HEIGHT",_height];
this setVariable ["CS_SLINGLOADING", _slingload];
this setVariable ["CS_CONTAINERS",_container];

	}


if (_type == "HYBRID") then

	{

this setvariable ["CS_TYPE","HYBRID"];
this setvariable ["CS_CALLSIGN",_call];
this setvariable ["CS_HEIGHT",_height];
this setVariable ["CS_SLINGLOADING", _slingload];
this setVariable ["CS_CONTAINERS",_container];

	}



if (_type == "ARTY") then

	{

this setvariable ["CS_TYPE","ARTY"];
this setvariable ["CS_CALLSIGN",_call];
this setvariable ["CS_HEIGHT",_height];
this setvariable ["CS_ARTILLERY_HE",_artyHE];
this setvariable ["CS_ARTILLERY_SMOKE",_artySMOKE];
this setvariable ["CS_ARTILLERY_GUIDED",_artyGUIDED];
this setvariable ["CS_ARTILLERY_ROCKETS",_artyROCKETS];

	}