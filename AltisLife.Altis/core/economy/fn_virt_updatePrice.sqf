#include <macro.h>
/*
	File: fn_virt_update.sqf
	Author: TheTotenkopf

	Description:
	Update and fill the virtual shop menu.
*/
private["_display","_item_list","_gear_list","_shop_data","_name","_price"];
disableSerialization;

//Setup control vars.
_display = findDisplay 2400;
_item_list = _display displayCtrl 2401;
_gear_list = _display displayCtrl 2402;

//Purge list
lbClear _item_list;
lbClear _gear_list;

_type= [_this,0,0,[0]] call BIS_fnc_param;
_array= [_this,1,[],[[]]] call BIS_fnc_param;

_shop_data = [life_shop_type] call life_fnc_virt_shops;
ctrlSetText[2403,format["%1", _shop_data select 0]];

if (count _array == 0 ) exitwith {};


{
if ((_x select 1) > 1 ) then {
	_name = [([(_x select 0),0] call life_fnc_varHandle)] call life_fnc_vartostr;
	
		_price = _x select 1;
		_item_list lbAdd format["%1  ($%2)",_name,[_price] call life_fnc_numberText];
		_item_list lbSetData [(lbSize _item_list)-1,_x select 0];
		_item_list lbSetValue [(lbSize _item_list)-1,_price];
	
	};
} foreach _array;

{
	if ((_x select 2) > 1 ) then {
	_name = _x select 0;
	_var = [_name,0] call life_fnc_varHandle;
	_val = missionNameSpace getVariable _var;
	_name = [_var] call life_fnc_vartostr;
	
	if(_val > 0) then
	{
		_price = _x select 2;
		_gear_list lbAdd format["%1x %2",_val,_name];
		_gear_list lbSetData [(lbSize _gear_list)-1,_x select 0];
		_gear_list lbSetValue [(lbSize _gear_list)-1,_price];
		};
	};
} foreach (_array);