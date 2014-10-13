/*
	File: fn_copLoadout.sqf
	Author: TheTotenkopf
	Edited: SealDrop.de
	
	Description:
	Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Fügt die Uniform und die Textur zu.
player addUniform "U_Rangemaster";
player setObjectTextureGlobal [0,"skins\human\cop\police_shirt.paa"];

/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addWeapon "Rangefinder";
player addItem "NVGoggles_OPFOR";
player assignItem "NVGoggles_OPFOR";

[] call life_fnc_saveGear;