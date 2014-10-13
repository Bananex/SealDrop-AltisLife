/*
    File: fn_processActionLsd.sqf
    Author: Bryan "Tonic" Boardwine
    Script by Tonic Edit by Nark0t1k
    Description:
    Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_ui","_progress","_pgText","_cP"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};

//unprocessed item,processed item, cost if no license,Text to display (I.e Processing (percent) ..."
_itemInfo = switch (_type) do
{
    case "uranium3": {["uranium3","uranium4",10000,"Getrenntes Uran"]};
    default {[]};
};

//Error checking
if(count _itemInfo == 0) exitWith {};

//Setup vars.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;
_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
//_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);
_oldVal = 1;

_cost = _cost * _oldVal;
//Some more checks
if(_oldVal == 0) exitWith {};

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

life_is_processing = true;

if(_hasLicense) then
{
    titleText["Dieser Rohstoff ist schwer zu behandeln ! Sie sollten sich Schützen !","PLAIN"];
    while{true} do
    {
        sleep 0.05;
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
        if(_cP >= 1) exitWith {};
        if(player distance _vendor > 10) exitWith {};
    };

    if(player distance _vendor > 10) exitWith {hint "Du musst mindestens 10 Meter daneben stehen."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
    if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
    if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
    5 cutText ["","PLAIN"];

    titleText[format["Du hast %1 zu %2 umgewandelt.",_oldVal,_itemName],"PLAIN"];

    life_is_processing = false;

}
    else
{

    hint "Du benötigst eine Lizenz dafür! Oder willst du Sterben ?";
    life_is_processing = false;
};    