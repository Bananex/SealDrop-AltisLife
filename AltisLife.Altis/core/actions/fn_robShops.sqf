/*
file: fn_robShops.sqf
Author: TheTotenkopf (For SealDrop.de)
*/
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_kassa = 1000; //The amount the shop has to rob, you could make this a parameter of the call (https://community.bistudio.com/wiki/addAction). Give it a try and post below ;)
_action = [_this,2] call BIS_fnc_param;//Action name
_rip = true;

if(side _robber != civilian) exitWith {hint "Du kannst die Tankstelle nicht ausrauben"};
if(player distance (_this select 0) > 5) exitWith {hint "Du bist zu weit weg !"};

if (vehicle player != _robber) exitWith { hint "Verlass dein Fahrzeug!" };

if !(alive _robber) exitWith {_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];};
if (currentWeapon _robber == "") exitWith { hint "HaHa, Du willst dich mit mir anlegen ? Komm hau ab du hobo!" };
if (_kassa == 0) exitWith { hint "Es befindet sich kein Geld in der Kasse!" };

_kassa = 5000 + round(random 10000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_chance = random(100);
if(_chance >= 85) then { hint "Der Tankwart hat den stillen Alarm ausgelöst ! Renn oder du wirst die Welt nur noch hinter Mauer sehen !"; [[1,format["ALARM! - Tankstelle: %1 wird gerade ausgeraubt!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; };

_cops = (west countSide playableUnits);
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Robbery in Progress, stay close (10m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;
 
if(_rip) then
{
while{true} do
{
sleep 0.85;
_cP = _cP + 0.01;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["Besitzer wird ausgeraubt (%1%2)...",round(_cP * 100),"%"];
_Pos = position player;
				                _marker = createMarker ["Marker200", _Pos];
				                "Marker200" setMarkerColor "ColorRed";
				                "Marker200" setMarkerText "LADEN WIRD AUSGERAUBT!";
				                "Marker200" setMarkerType "mil_warning";			
if(_cP >= 1) exitWith {_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];};
if(_robber distance _shop > 10.5) exitWith {_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];};
if!(alive _robber) exitWith {_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];};
};
if!(alive _robber) exitWith { _rip = false; };
if(_robber distance _shop > 10.5) exitWith { deleteMarker "Marker200"; _shop switchMove ""; hint "You need to stay within 10m to Rob registry! - Now the registry is locked."; 5 cutText ["","PLAIN"]; _rip = false; };
5 cutText ["","PLAIN"];

titleText[format["Du hast %1€ gestohlen ! Nun hau ab befor dich die Polizei findet !",[_kassa] call life_fnc_numberText],"PLAIN"];
deleteMarker "Marker200";
life_cash = life_cash + _kassa;

_rip = false;
life_use_atm = false;
sleep (30 + random(180));
life_use_atm = true;
if!(alive _robber) exitWith {_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];};
[[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
};
sleep 3600;
_action = _shop addAction["Kasse ausrauben",life_fnc_robShops];	
_shop switchMove "";
_ui = "osefStatusBar" call BIS_fnc_rscLayer;_ui cutRsc["osefStatusBar","PLAIN"];