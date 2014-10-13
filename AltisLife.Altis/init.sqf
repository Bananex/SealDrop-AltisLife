enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

//Exec Scripts and more...
life_versionInfo = "SealDrop Life RPG";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf"; //Load the Server Strings
[] execVM "script\fastrope.sqf"; //Load Fastrope
[] execVM "script\welcome.sqf"; //Load Welcome Intro
[] execVM "core\civilian\fn_welcome.sqf"; //Load Willkommen
[] execVM "script\teargas.sqf"; //Load Teargas Script for Cops
[] execVM "script\savezone.sqf"; //Load the Savezones
[] execVM "script\fn_statusBar.sqf"; //Load the Statusbar
StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

//Disable the FOG
[] spawn {
	while{true} do {
		sleep 10;
		200 setFog 0;
		sleep 590;
	};
};

MAC_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;
    
};