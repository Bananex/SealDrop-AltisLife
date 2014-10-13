/*
	File: fn_bountyReceive.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Notifies the player he has received a bounty and gives him the cash.
*/
private["_val","_total"];
_val = [_this,0,"",["",0]] call BIS_fnc_param;
_total = [_this,1,"",["",0]] call BIS_fnc_param;

if(_val == _total) then
{
	titleText[format["Der Staat hat %1€ an die Polizeizentrale geschenkt, dafür das Du einen Räuber gefasst hast.",[_val] call life_fnc_numberText],"PLAIN"];
}
	else
{
	titleText[format["Der Staat hat €%1 für die Eliminierung des Räubers gezahlt, für die Inhaftierung hätte es %2€ gegeben.",[_val] call life_fnc_numberText,[_total] call life_fnc_numberText],"PLAIN"];
};