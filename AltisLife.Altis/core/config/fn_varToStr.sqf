/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	case "life_inv_oilu": {"Rohöl"};
	case "life_inv_oilp": {"Euro-Diesel"};
	case "life_inv_heroinu": {"Unverarbeitetes Heroin"};
	case "life_inv_heroinp": {"Verarbeitetes Heroin"};
	case "life_inv_cannabis": {"Kannabis"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_apple": {"Apfel"};
	case "life_inv_rabbit": {"Hasenfleisch"};
	case "life_inv_salema": {"Salema Fleisch"};
	case "life_inv_ornate": {"Aufwendiges Fleisch"};
	case "life_inv_mackerel": {"Makrele Fleisch"};
	case "life_inv_tuna": {"Thunfisch"};
	case "life_inv_mullet": {"Meeräsche Fleisch"};
	case "life_inv_catshark": {"Katzenhai Fleisch"};
	case "life_inv_turtle": {"Turtle Meat"};
	case "life_inv_fishingpoles": {"Angel"};
	case "life_inv_water": {"Wasserflasche"};
	case "life_inv_coffee": {"Kaffee"};
	case "life_inv_turtlesoup": {"Schildkröten Suppe"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Benzinkanister (leer)"};
	case "life_inv_fuelF": {"Benzinkanister"};
	case "life_inv_pickaxe": {"Spitzhacke"};
	case "life_inv_copperore": {"Kupfererz"};
	case "life_inv_ironore": {"Eisenerz"};
	case "life_inv_ironr": {"Eisen Barren"};
	case "life_inv_copperr": {"Kupfer Barren"};
	case "life_inv_sand": {"Silber"};
	case "life_inv_salt": {"Salzerz"};
	case "life_inv_saltr": {"Salz"};
	case "life_inv_glass": {"Glas"};
	case "life_inv_diamond": {"Diamant Uncut"};
	case "life_inv_diamondr": {"Diamant Cut"};
	case "life_inv_tbacon": {"Tactical Bacon"};
	case "life_inv_redgull": {"RedBull"};
	case "life_inv_lockpick": {"Dietrich"};
	case "life_inv_peach": {"Pfirsich"};
	case "life_inv_coke": {"Unverarbeitetes Kokain"};
	case "life_inv_cokep": {"Verarbeitetes Kokain"};
	case "life_inv_spikeStrip": {"Nagelband"};
	case "life_inv_rock": {"Stein"};
	case "life_inv_cement": {"Zement Sack"};
	case "life_inv_goldbar": {"Gold Barren"};
	case "life_inv_wine": {"Wein"};
	case "life_inv_grapes": {"Trauben"};
	case "life_inv_methu": {"Unverarbeitetes Methamphetamine"};
	case "life_inv_methp": {"Pures Methamphetamine"};
	case "life_inv_storage1": {"Kiste (klein)"};
	case "life_inv_storage2": {"Kiste (groß)"};
	case "life_inv_battery": {"Telefon Batterie"};
	case "life_inv_blastingcharge": {"C4 Sprengstoff"};
	case "life_inv_boltcutter": {"Bolzen Schneider"};
	case "life_inv_defusekit": {"C4 EntschärfungsKit"};
	case "life_inv_painkillers": {"Schmerzmittel"};
	case "life_inv_morphium": {"Morphium"};
	case "life_inv_zipties": {"Kabelbinder"};
	case "life_inv_storagesmall": {"Small Storage Box"};
	case "life_inv_storagebig": {"Large Storage Box"};
	case "life_inv_mauer": {"Strassensperre"};
	case "life_inv_mash": {"Grain Mash Mixture"};
	case "life_inv_yeast": {"Hefe"};
	case "life_inv_rye": {"Roggen"};
	case "life_inv_hops": {"Hopfen"};
	case "life_inv_whiskey": {"Destillierter Whiskey"};
	case "life_inv_beerp": {"Fermentiertes Bier"};
	case "life_inv_bottles": {"Glass Flaschen"};
	case "life_inv_cornmeal": {"Maismehl Getreide"};
	case "life_inv_bottledwhiskey": {"Abgefüllter Whiskey"};
	case "life_inv_bottledbeer": {"Abgefülltes Beer"};
	case "life_inv_bottledshine": {"Abgefüllter Moonshine"};
	case "life_inv_moonshine": {"Destillierter Moonshine"};
	case "life_inv_puranium": {"Uran Mischung"}; // Add This
    case "life_inv_ipuranium": {"Produkt III Uran"}; // Add This
    case "life_inv_uranium1": {"Uranerz"}; // Add This
    case "life_inv_uranium2": {"Rohes Uran"}; // Add This
    case "life_inv_uranium3": {"Gereinigtes Uran"}; // Add This
    case "life_inv_uranium4": {"Uran Konzetrat"}; // Add This
    case "life_inv_uranium": {"Uran"}; // Add This
	case "life_inv_kidney": {"Niere"}; 
	case "life_inv_scalpel": {"Scalpel"};
	
	//License Block
	case "license_civ_driver": {"Führerschein"};
	case "license_civ_air": {"Pilotenschein"};
	case "license_civ_heroin": {"Heroin Training"};
	case "license_civ_gang": {"Gang Lizenz"};
	case "license_civ_oil": {"ÖL Verarbeitung"};
	case "license_civ_dive": {"Taucherschein"};
	case "license_civ_boat": {"Bootschein"};
	case "license_civ_gun": {"Waffenschein"};
	case "license_cop_air": {"Pilotenschein"};
	case "license_cop_swat": {"GSG9 Lizenz"};
	case "license_cop_cg": {"Küstenwache"};
	case "license_civ_rebel": {"Rebellen Training"};
	case "license_civ_truck": {"LKW-Schein"};
	case "license_civ_diamond": {"Diamant Verarbeitung"};
	case "license_civ_copper": {"Kupfer Verarbeitung"};
	case "license_civ_iron": {"Eisen Verarbeitung"};
	case "license_civ_sand": {"Sand Verarbeitung"};
	case "license_civ_salt": {"Salz Verarbeitung"};
	case "license_civ_coke": {"Kokain Training"};
	case "license_civ_marijuana": {"Marijuana Training"};
	case "license_civ_cement": {"Zement Mix Lizenz"};
	case "license_civ_meth": {"Methamphetamine Training"};
	case "license_civ_grapes": {"Wein Verarbeitung"};
	case "license_civ_moonshine": {"Moonshine Verarbeitung"};
	case "license_civ_meth": {"Methamphetamine Training"};
	case "license_med_air": {"Medizin Ausbildung"};
	case "license_civ_home": {"Hauseigentümer Lizenz"};
	case "license_med_adac": {"ADAC Lizenz"};
	case "license_civ_stiller": {"Destillier Lizenz"};
	case "license_civ_liquor": {"Schnaps Lizenz"};
	case "license_civ_bottler": {"Abfüll Lizenz"};
	case "license_civ_uranium": {"Uran Lizenz"};
};
