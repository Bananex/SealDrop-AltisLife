/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the civilian.
*/
private["_spawnPos"];
civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
waitUntil {!(isNull (findDisplay 46))};

//Jail Check
if(life_is_arrested) then
{
	hint "You tried to suicide from jail, you will be jailed again with a longer time.";
	life_is_arrested = false;
	[player,true] spawn life_fnc_jail;
}
	else
{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
};
player addRating 9999999;

//Skins für Zivis
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_C_Poloshirt_stripped"};
        player setObjectTextureGlobal [0,"skins\tshirt.jpg"];
        waitUntil {uniform player != "U_C_Poloshirt_stripped"};
    };
};
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_C_Poor_2"};
        player setObjectTextureGlobal [0,"skins\human\civ\kitty.paa"];
        waitUntil {uniform player != "U_C_Poor_2"};
    };
};
//Ende für Zivi Skins


//Introcam
[] spawn life_fnc_IntroCam;