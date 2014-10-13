/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/

private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Gear+Items
player addItemToBackpack "Medikit";
player addItemToBackpack "ToolKit";
player addHeadgear "H_Cap_marshal";
player addItemToBackpack "ToolKit";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "NVGoggles";
player assignItem "NVGoggles";
player removeItem "ItemRadio";
player addGoggles "G_Aviator";
player addWeapon "Binocular";
player addItemToUniform "Chemlight_yellow";
player addItemToUniform "Chemlight_yellow";
player addItemToUniform "Chemlight_yellow";
player addItemToUniform "Chemlight_yellow";
player addItemToUniform "Chemlight_yellow";


[] call life_fnc_saveGear;