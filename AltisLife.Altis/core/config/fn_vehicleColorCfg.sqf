/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path","_path2"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_path2 = "skins\air\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"],
			[_path2 + "medic_mowhawk.paa","med","#(argb,8,8,3)color(1,1,1,0.8)","#(argb,8,8,3)color(1,1,1,0.8)"],
			["#(ai,64,64,1)Fresnel(1.3,7)","cop","#(argb,8,8,3)color(1,1,1,0.8)","#(ai,64,64,1)Fresnel(1.3,7)"]
		];
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_path2 = "skins\car\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"],
			[_path2 + "police_hatchback.paa","cop"],
			[_path2 + "civ_hatchback_metallica.paa","civ"],
			[_path2 + "hatchback_sport_ken_block.paa","civ"]
		];
	};
		
	case "C_Offroad_01_F":
	{
		_path = "skins\car\";
		_ret = 
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"], 
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["#(ai,64,64,1)Fresnel(0.3,3)","fed"],
			[_path + "police_offroad.paa","cop"],
			["#(argb,8,8,3)color(0.6,0.3,0.01,1)","civ"],
			[_path + "medic_offroad.paa","med"],
			[_path + "civ_offroad_rockstargelb.paa","civ"],
			[_path + "civ_offroad_rockstarlila.paa","civ"],
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"],
			[_path + "civ_offroad_camo.paa","civ"],
			[_path + "civ_offroad_dodge.paa","civ"],
			[_path + "civ_offroad_weed.paa","civ"], 
			[_path + "monsterenergy_off.paa","civ"]
		];
	};
	
	case "C_Offroad_01_repair_F":
	{
		_path = "skins\car\";
		_ret =
		[
			[_path + "adac_offroad.paa","med"]
		];
	};
	
	case "C_Hatchback_01_F":
	{
		_path = "skins\car\";
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
			[_path + "police_hatchback.paa","cop"]
		];
	};
	
	case "C_SUV_01_F":
	{
		_path = "skins\car\";
		_ret =
		[
			[_path + "suv_sealdrop.paa","civ"],
			[_path + "police_suv.paa","cop"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"],
			[_path + "medic_suv.paa","med"],
			[_path + "poly_suv.paa","civ"],
			[_path + "camo_suv.paa","civ"],
			[_path + "civ_suv_monster.paa","civ"],
			[_path + "carbon_suv.paa","cop"],
			[_path + "carbon_suv1.paa","cop"],
			[_path + "batman_suv.paa","civ"],
			[_path + "civ_suv_ferrari.paa","civ"],
			[_path + "civ_suv_skull.paa","civ"],
			[_path + "kitty.paa","civ"]
		];
	};
	
	case "C_Van_01_box_F":
	{
		_path = "skins\car\";
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			[_path + "rtwfront.paa","med",_path + "rtwback.paa"]
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "B_Quadbike_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"]
		];
	};
	
	case "B_Heli_Light_01_F":
	{
		_path  = "skins\air\";
		_ret = 
		[
			[_path + "police_heli.paa","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","civ"],
			[_path + "medic_littlebird.paa","med"], 
			[_path + "civ_hummingbird_redbull.paa","civ"], 
			[_path + "kitty_heli.jpg","civ"]
		];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_path = "skins\air\";
		_ret = 
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","civ"],
			[_path + "adac_orca.jpg","med"],
			[_path + "medic_orca.jpg","med"]
		];
	};
	
	case "B_MRAP_01_F":
	{
		_path = "skins\car\";
		_ret = 
		[
			[_path + "sek_hunter_1.paa","cop",_path + "sek_hunter_2.paa"],
			[_path + "donator_hunter_front.paa","civ",_path + "donator_hunter_hinten.paa"],
			[_path + "hunterpol_1.paa","cop",_path + "hunterpol_2.paa"]
		];
	};
	
	case "I_Truck_02_covered_F":
	{
		_path = "skins\car\";
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			[_path + "civ_zamak_redbull_0.paa","civ",_path + "civ_zamak_redbull_1.paa"],
			[_path + "truck_02_kab_co.paa","civ",_path + "truck_02_kuz_co.paa"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};

	case "I_Heli_light_03_unarmed_F":
	{
		_path = "skins\air\";
		_ret =
		[
			[_path + "hellcat.jpg","cop"],
			[_path + "hellcat_adac.jpg","med"],
			[_path + "sek_hellcat.jpg","cop"]
		];
	};

	case "I_MRAP_03_F":
	{
		_path = "skins\car\";
		_ret =
		[
			[_path + "strider.paa","civ"],
			[_path + "strider_sek.paa","cop"]
		];
	};

	case "O_MRAP_02_F":
	{
		_path = "skins\car\";
		_ret =
		[
			[_path + "ifrit_r1.paa","civ",_path + "ifrit_r2.paa"],
			["\A3\Soft_F\MRAP_02\data\mrap_02_ext_01_co.paa","civ","\A3\Soft_F\MRAP_02\data\mrap_02_ext_02_co.paa"]
		];
	};

	case "B_Heli_Transport_01_F":
	{
		_path = "skins\air\";
		_ret =
		[
			[_path + "swat_ghosthawk.jpg","cop",_path + "swat_ghosthawk_1.jpg"]
		];
	};
	case "B_Truck_01_box_F":
	{
		_path = "skins\car\";
		_ret =
		[
			[_path + "civ_hemtt_devil_0.paa","civ",_path + "civ_hemtt_devil_1.paa"],
			[_path + "civ_hemtt_kitty_0.paa","civ",_path + "civ_hemtt_kitty_1.paa"]
		];
	};
	case "B_Truck_01_transport_F":
	{
		_path = "skins\car\";
		_ret =
		[
			[_path + "civ_hemtt_devil_0.paa","civ",_path + "civ_hemtt_devil_1.paa"],
			[_path + "civ_hemtt_kitty_0.paa","civ",_path + "civ_hemtt_kitty_1.paa"]
		];
	};
	case "B_Truck_01_covered_F":
	{
		_path = "skins\car\";
		_ret =
		[
			[_path + "civ_hemtt_devil_0.paa","civ",_path + "civ_hemtt_devil_1.paa"],
			[_path + "civ_hemtt_kitty_0.paa","civ",_path + "civ_hemtt_kitty_1.paa"]
		];
	};
	case "B_Truck_01_ammo_F":
	{
		_path = "skins\car\";
		_ret =
		[
			[_path + "civ_hemtt_devil_0.paa","civ",_path + "civ_hemtt_devil_1.paa"],
			[_path + "civ_hemtt_kitty_0.paa","civ",_path + "civ_hemtt_kitty_1.paa"]
		];
	};
};

_ret;