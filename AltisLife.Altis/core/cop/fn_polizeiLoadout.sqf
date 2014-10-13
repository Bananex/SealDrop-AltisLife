#include <macro.h>
/*	
	File: fn_sekLoadout.sqf 
	Author: SealDrop.de (TheTotenkopf)

*/
private ["_loadoutName","_action","_guncost"];
if(playerSide in [civilian,independent,east]) exitWith {hint"Du bist nicht Berechtigt dieses Equip zu kaufen.";};
if(__GETC__(life_coplevel) < 4) exitWith {hint "Du bist nicht beim GSG9"};
if (vehicle player != player) exitWith { hint "Get out of your vehicle!" };
if(!alive player) exitWith {hint"You dead homie.. dafuq";};
_guncost = 5000;
if(life_cash < _guncost) exitWith {hint format[localize "STR_NOTF_LO_NoCash",_guncost];};
_loadoutName = "Polizei-Ausrüstung";
_action = [
			format["Bist Du sicher das Du dein Equip durch das POLIZEI-SET ersetzen willst: %1: Das SET Kostet %2 Euro",_loadoutName,[_guncost] call life_fnc_numberText],
			"Polizei Ausrüstung",
			"Kaufen",
			"Nein"
		] call BIS_fnc_guiMessage;
if(_action) then {
			
hint parseText format["Du hast das %1 für <t color='#8cff9b'>%2</t>",_loadoutName,[_guncost] call life_fnc_numberText];
life_cash =life_cash - _guncost;
			
titleText ["Ausrüstung wird angelegt...","PLAIN"];

sleep 1;
RemoveAllWeapons player;
{player removeMagazine _x;} foreach (magazines player);
removeUniform player;
removeVest player;
removeBackpack player;
removeAllItems player;
removeGoggles player;
removeHeadGear player;
{
	player unassignItem _x;
	player removeItem _x;
} foreach (assignedItems player);
titleText[format["Ausrüstung wird angelegt %1 ...",_loadoutName],"PLAIN"];
sleep 4;

player addUniform "U_B_CombatUniform_mcam_vest";
player addVest "V_TacVest_blk_POLICE";
player addHeadgear "H_Cap_police";
player addBackPack "B_Carryall_mcamo";
player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
player addMagazine "30Rnd_65x39_caseless_mag_Tracer";
player addMagazine "30Rnd_65x39_caseless_mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addWeapon "hgun_Rook40_F";
player addWeapon "arifle_MX_RCO_pointer_snds_F";
player selectWeapon "hgun_Rook40_F";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemMap";
player addWeapon "Rangefinder";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "NVGoggles_OPFOR";
player assignItem "NVGoggles_OPFOR";
mybackpack = unitBackpack player;
mybackpack addItemCargoGlobal["Toolkit", 1];
mybackpack addItemCargoGlobal["Medikit", 1];
//you can also y-inv items too like this
life_inv_coffee = life_inv_coffee + 3;
life_inv_spikeStrip = life_inv_spikeStrip + 3;
life_inv_mauer = life_inv_mauer + 3;
life_inv_painkillers = life_inv_painkillers + 5;
life_inv_defusekit = life_inv_defusekit + 1;
life_inv_redgull = life_inv_redgull + 5;
reload player;
titleText [format["Viel Spaß mit deiner %1",_loadoutName],"PLAIN"];
} else {
			hint "Okey.. Danke für nix :)";
};