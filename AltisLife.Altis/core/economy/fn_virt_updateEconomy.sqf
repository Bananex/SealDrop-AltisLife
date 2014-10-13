#include <macro.h>
/*
	File: fn_virt_update.sqf
	Author: TheTotenkopf
	Description:
	Update and fill the virtual shop menu.
*/
private["_display","_achatliste","_gear_list","_shop_data","_name","_price"];
disableSerialization;

//Setup control vars.
_display = findDisplay 39000;
_venteliste = _display displayCtrl 39002;
_achatliste = _display displayCtrl 39003;

//Purge list
lbClear _achatliste;
lbClear _venteliste;

_type= [_this,0,0,[0]] call BIS_fnc_param;
_array= [_this,1,[],[[]]] call BIS_fnc_param;




if (count _array == 0 ) exitwith {};


{
if ((_x select 2) > 1 ) then {
	_name = [([(_x select 0),0] call life_fnc_varHandle)] call life_fnc_vartostr;
	
		_price = _x select 2;
		_achatliste lbAdd format["%1  ($%2)",_name,[_price] call life_fnc_numberText];
		_achatliste lbSetData [(lbSize _achatliste)-1,_x select 0];
		_achatliste lbSetValue [(lbSize _achatliste)-1,_price];
	
	};
} foreach _array;

{
	if ((_x select 1) > 1 ) then {
	_name = [([(_x select 0),0] call life_fnc_varHandle)] call life_fnc_vartostr;
	/*_var = [_name,0] call life_fnc_varHandle;
	_val = missionNameSpace getVariable _var;
	_name = [_var] call life_fnc_vartostr;*/
	
	
		_price = _x select 1;
		_venteliste lbAdd format["%1  ($%2)",_name,[_price] call life_fnc_numberText];
		_venteliste lbSetData [(lbSize _venteliste)-1,_x select 0];
		_venteliste lbSetValue [(lbSize _venteliste)-1,_price];
		
	};
} foreach (_array);

lbSortByValue _achatliste;
lbSortByValue _venteliste;