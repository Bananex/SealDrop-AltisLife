#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 2; //Scaled in minutes
life_has_insurance = false;
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
life_smartphoneTarget = ObjNull;
life_action_gather = false;
life_drink = 0;
life_fatigue = 0.2; //Set the max fatigue limit (50%)
life_kw_athira = false; 
life_kw_kavala = false; 
life_kw_sofia = false; 
life_kw_kavala = false;
life_request_timer = false;
life_markers = false;
life_sitting = false;
life_firstSpawn = false;


//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for civs and cops? (Medics excluded for now)

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,1000); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,3); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,40000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 50; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 100; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Food Variables *******
*****************************
*/
life_eat_Salema = 40;
life_eat_Ornate = 20;
life_eat_Mackerel = 20;
life_eat_Tuna = 100;
life_eat_Mullet = 30;
life_eat_CatShark = 60;
life_eat_Rabbit = 20;
life_eat_Apple = 5;
life_eat_turtlesoup = 80;
life_eat_donuts = 100;

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
life_battery = 50;
__CONST__(life_paycheck_period,10); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,5000);
__CONST__(life_impound_boat,1000);
__CONST__(life_impound_air,10000);
life_istazed = false;
life_my_gang = ObjNull;
life_drugged_cocaine = -1;
life_drugged_cocaine_duration = 10; 
life_drugged_weed = -1;
life_drugged_weed_duration = 3;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 8500; //Starting Bank Money
		life_paycheck = 4000; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 8500; //Starting Bank Money
		life_paycheck = 1000; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 8500;
		life_paycheck = 3000;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["I_MRAP_03_hmg_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_painkillers",
	"life_inv_morphium",
	"life_inv_zipties",
	"life_inv_wine",
	"life_inv_grapes",
	"life_inv_methu",
	"life_inv_methp",
	"life_inv_battery",
	"life_inv_mauer",
	"life_inv_cornmeal",
	"life_inv_beerp",
	"life_inv_whiskey",
	"life_inv_rye",
	"life_inv_hops",
	"life_inv_yeast",
	"life_inv_bottles",
	"life_inv_bottledshine",
	"life_inv_bottledbeer",
	"life_inv_bottledwhiskey",
	"life_inv_moonshine",
	"life_inv_mash",
	"life_inv_puranium",
	"life_inv_ipuranium",
	"life_inv_uranium1",
	"life_inv_uranium2",
	"life_inv_uranium3",
	"life_inv_uranium4",
	"life_inv_uranium",
	"life_inv_kidney",
	"life_inv_scalpel"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_civ_grapes","civ"],
	["license_civ_moonshine","civ"],
	["license_civ_meth","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_med_adac","med"],
	["license_civ_stiller","civ"],
	["license_civ_liquor","civ"],
	["license_civ_bottler","civ"],
	["license_civ_uranium","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",2500],["heroinp",5000],["cocaine",3000],["cocainep",6000],["methu",4000],["methp",8000],["marijuana",3500],["ipuranium",10000],["turtle",5000],["blastingcharge",10000],
["moonshine",6500],["boltcutter",1000],["bottledshine",6500],["kidney",12500],["scalpel",5000],["mash",6500],["spikeStrip",1500]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
	["heroinu",2250],
	["heroinp",4500],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",2250],
	["turtle",5750],
	["water",0],
	["coffee",0],
	["turtlesoup",4500],
	["donuts",0],
	["marijuana",3000],
	["tbacon",25],
	["lockpick",750],
	["pickaxe",1000],
	["redgull",750],
	["peach",65],
	["cocaine",2500],
	["cocainep",5000],
	["diamond",1500],
	["diamondc",3000],
	["iron_r",1500],
	["copper_r",1000],
	["salt_r",2500],
	["glass",1500],
	["fuelF",0],
	["spikeStrip",0],
	["cement",1000],
	["wine",1000],
	["grapes",70],
	["methu",1875],
	["methp",3750],
	["battery",50],
	["defusekit",0],
	["boltcutter",2500],
	["blastingcharge",10000],
	["goldbar",90000],
	["painkillers",100],
	["morphium",100],
	["zipties",5],
	["mauer",0],
	["bottledshine",3000], 
	["bottledwhiskey",1500], 
	["bottledbeer",750], 
	["moonshine",1000], 
	["whiskey",1250], 
	["beerp",550], 
	["mash",500], 
	["rye",2000], 
	["hops",1800], 
	["yeast",2000], 
	["cornmeal",200], 
	["bottles",50],
	["uranium",10000],
	["kidney",9000],
	["scalpel",1000]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",15000],
	["turtlesoup",15000],
	["donuts",10],
	["coffee",10],
	["tbacon",75],
	["lockpick",4000],
	["pickaxe",1200],
	["redgull",1000],
	["fuelF",850],
	["peach",70],
	["spikeStrip",10],
	["moonshine",9000],
	["wine",4000],
	["grapes",95],
	["battery",100],
	["defusekit",10],
	["boltcutter",8000],
	["blastingcharge",50000],
	["painkillers",500],
	["morphium",1500],
	["zipties",500],
	["storagesmall",125000],
	["storagebig",250000],
	["mauer",10],
	["bottledshine",12000], 
	["bottledwhiskey",5500], 
	["bottledbeer",1250], 
	["moonshine",7500], 
	["whiskey",5500], 
	["beerp",5000], 
	["cornmeal",500], 
	["mash",2500], 
	["bottles",100],
	["puranium",1000],
	["ipuranium",9000],
	["kidney",15000],
	["scalpel",7500]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["hgun_P07_snds_F",0],
	["hgun_P07_F",0],
	["hgun_Rook40_F",0],
	["hgun_Pistol_heavy_01_F",0],
	["SMG_01_F",0],
	["arifle_sdar_F",0],
	["arifle_Mk20C_F",0],
	["arifle_TRG21_F",0],
	["arifle_TRG20_F",0],
	["arifle_Katiba_F",0],
	["arifle_Katiba_C_F",0],
	["arifle_MXC_Black_F",0],
	["arifle_MX_Black_F",0],
	["arifle_MXM_Black_F",0],
	["arifle_MXC_F",0],
	["arifle_MX_F",0],	
	["arifle_MXM_F",0],
	["SMG_02_F",0],
	["srifle_LRR_LRPS_F",0],
	["srifle_EBR_F",0],
	["arifle_MX_SW_Black_F",0],
	["arifle_MX_SW_F",0],	
	["LMG_Zafir_F",0],
	["srifle_GM6_F",0],

	["muzzle_snds_M",0],
	["muzzle_snds_L",0],
	["muzzle_snds_H",0],
	["optic_Aco_smg",0],
	["optic_ACO_grn",0],
	["optic_Aco",0],
	["optic_Arco",0],
	["optic_Hamr",0],
	["optic_Holosight",0],
	["optic_Holosight_smg",0],
	["optic_SOS",0],
	["optic_LRPS",0],
	["optic_MRCO",0],
	["optic_DMS",0],
	["optic_NVS",0],
	["acc_pointer_IR",0],
	["acc_flashlight",0],
	["optic_Yorris",0],
	
	["HandGrenade_Stone",0],
	
	["Rangefinder",0],
	["Binocular",0],
	["ItemGPS",0],
	["ToolKit",0],
	["FirstAidKit",0],
	["Medikit",0],
	["NVGoggles",0],
	["NVGoggles_OPFOR",0],
	["ItemMap",0],
	["ItemCompass",0],
	["ItemWatch",0],
	["DemoCharge_Remote_Mag",0],
	["SLAMDirectionalMine_Wire_Mag",0],
	["MineDetector",0],
	
	["5Rnd_127x108_Mag",0],
	["5Rnd_127x108_APDS_Mag",0],	
	["150Rnd_762x51_Box",0],	
	["100Rnd_65x39_caseless_mag",0],	
	["7Rnd_408_Mag",0],		
	["20Rnd_762x51_Mag",0],
	["30Rnd_45ACP_Mag_SMG_01",0],
	["30Rnd_9x21_Mag",0],	
	["30Rnd_556x45_Stanag",0],
	["20Rnd_762x51_Mag",0],
	["30Rnd_65x39_caseless_green",0],
	["16Rnd_9x21_Mag",0],
	["6Rnd_45ACP_Cylinder",0],
	["20Rnd_556x45_UW_mag",0],
	["9Rnd_45ACP_Mag",0],
	["11Rnd_45ACP_Mag",0],
	["30Rnd_556x45_Stanag_Tracer_Red",0]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",500],
	["C_Hatchback_01_F",1000],
	["C_Offroad_01_F",3000],
	["B_G_Offroad_01_F",4000],
	["C_SUV_01_F",5500],
	["C_Van_01_transport_F",8000],
	["C_Hatchback_01_sport_F",10000],
	["C_Van_01_fuel_F",5000],
	["I_Heli_Transport_02_F",15750],
	["C_Van_01_box_F",6000],
	["I_Truck_02_transport_F",15000],
	["I_Truck_02_covered_F",12500],
	["B_Truck_01_transport_F",17500],
	["B_Truck_01_box_F",35750],
	["O_MRAP_02_F",50000],
	["B_Heli_Light_01_F",15000],
	["O_Heli_Light_02_unarmed_F",25000],
	["C_Rubberboat",1000],
	["C_Boat_Civil_01_F",5000],
	["B_Boat_Transport_01_F",7500],
	["C_Boat_Civil_01_police_F",8500],
	["B_Boat_Armed_01_minigun_F",15000],
	["B_SDV_01_F",30000],
	["B_MRAP_01_F",15000],
	["I_MRAP_03_F",60000],
	["O_Heli_Light_02_F",15000],
	["I_Heli_light_03_unarmed_F",15000],
	["O_Truck_03_covered_F",15000],
	["O_Truck_03_transport_F",20000],
	["I_Truck_02_box_F",25000],
	["O_Truck_03_device_F",60000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",1000],
	["C_Hatchback_01_F",4500],
	["C_Offroad_01_F",6500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",15000],
	["C_Van_01_transport_F",25000],
	["C_Hatchback_01_sport_F",7500],
	["C_Van_01_fuel_F",3850],
	["I_Heli_Transport_02_F",125000],
	["C_Van_01_box_F",35000],
	["I_Truck_02_transport_F",49800],
	["I_Truck_02_covered_F",25000],
	["B_Truck_01_transport_F",135000],
	["B_Truck_01_box_F",150000],
	["O_MRAP_02_F",65000],
	["B_Heli_Light_01_F",57000],
	["O_Heli_Light_02_unarmed_F",72500],
	["C_Rubberboat",950],
	["C_Boat_Civil_01_F",6800],
	["B_Boat_Transport_01_F",850],
	["C_Boat_Civil_01_police_F",4950],
	["B_Boat_Armed_01_minigun_F",21000],
	["B_SDV_01_F",45000],
	["B_MRAP_01_F",20000],
	["I_MRAP_03_F",50000],
	["O_Heli_Light_02_F",75000],
	["I_Heli_light_03_unarmed_F",15000],
	["O_Truck_03_transport_F",1000],
	["O_Truck_03_covered_F",10],
	["I_Truck_02_box_F",250000],
	["O_Truck_03_device_F",200000]
];
__CONST__(life_garage_sell,life_garage_sell);