#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Polizei Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
    case 0:
    {
        _ret set[count _ret,["U_Rangemaster","Praktikant",35]];
		if (__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret, ["U_B_SpecopsUniform_sgg", "Beamten Uniform", 2000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest","Uniform",500]];
			_ret set[count _ret,["U_B_Wetsuit","Taucher Anzug",500]];
		};
        if(__GETC__(life_coplevel) > 4) then
        {
			_ret set[count _ret,["U_B_GhillieSuit","GhillieSuit",1000]];
			_ret set[count _ret,["U_B_CombatUniform_mcam","SEK-Uniform",550]];
        };
		if(__GETC__(life_coplevel) > 5) then
        {
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn","GSG9-Uniform",1750]];		
        };
    };
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["H_Cap_police",nil,100]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,2500]]; 
			_ret set[count _ret,["H_Beret_02",nil,1500]];
			_ret set[count _ret,["H_Watchcap_blk",nil,3500]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["H_CrewHelmetHeli_B","GSG9-Helm",5000]];
			_ret set[count _ret,["H_HelmetB_black","SEK-Helm",5000]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
			_ret set[count _ret,["H_MilCap_mcamo",nil,500]];
			_ret set[count _ret,["H_HelmetIA",nil,1000]];
		};
		
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret set[count _ret,["H_Beret_Colonel",nil,1500]];
		};
	};
	
	//Glasses
	case 2:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["G_Shades_Black",nil,25]];
			_ret set[count _ret,["G_Shades_Blue",nil,20]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["G_Sport_Blackred",nil,20]];
			_ret set[count _ret,["G_Sport_Checkered",nil,20]];
			_ret set[count _ret,["G_B_Diving",nil,100]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["G_Sport_Blackyellow",nil,20]];
			_ret set[count _ret,["G_Sport_BlackWhite",nil,20]];
			_ret set[count _ret,["G_Aviator",nil,75]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["G_Squares",nil,10]];
			_ret set[count _ret,["G_Lowprofile",nil,30]];
			_ret set[count _ret,["G_Combat",nil,55]];
			_ret set[count _ret,["G_Balaclava_blk",nil,500]];
		};
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["V_RebreatherB",nil,5000]];
			_ret set[count _ret,["V_TacVest_blk_POLICE","Polizeiweste",1500]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["V_TacVestIR_blk","Einsatzweste",3000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["V_PlateCarrier1_blk","SEK/GSG9 Weste",2000]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret set[count _ret,["B_AssaultPack_cbr",nil,250]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["B_Kitbag_cbr",nil,500]];
			_ret set[count _ret,["B_FieldPack_cbr",nil,750]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["B_UAV_01_backpack_F",nil,1000]];
			_ret set[count _ret,["B_Bergen_sgg",nil,1250]];
			_ret set[count _ret,["B_Carryall_cbr",nil,1500]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["B_FieldPack_cbr_Ammo",nil,1750]];
			_ret set[count _ret,["B_Carryall_mcamo",nil,2000]];
			_ret set[count _ret,["B_Carryall_oucamo",nil,2250]];
			_ret set[count _ret,["B_Bergen_blk",nil,2500]];
		};
	};
};

_ret;