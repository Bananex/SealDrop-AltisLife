/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Red";};
			case 1: {_color = "Yellow";};
			case 2: {_color = "White";};
			case 3: {_color = "Blue";};
			case 4: {_color = "Dark Red";};
			case 5: {_color = "Blue / White"};
			case 6: {_color = "Black"};
			case 7: {_color = "Black"};
			case 8: {_color = "Taxi"};
			case 9: {_color = "Medic"};
			case 10: {_color = "Rockstar Gelb"};
			case 11: {_color = "Rockstar Lila"};
			case 12: {_color = "GSG-9/SEK"}; 
			case 13: {_color = "Hunter"}; 
			case 14: {_color = "Dodge"};
			case 15: {_color = "Weedfarmer"};	
			case 16: {_color = "Monster"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Green";};
			case 2: {_color = "Blue";};
			case 3: {_color = "Dark Blue";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "White"};
			case 6: {_color = "Grey"};
			case 7: {_color = "Black"};
			case 8: {_color = "Polizei"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Red"};
			case 1: {_color = "Dark Blue"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Black / White"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Green"};
			case 6: {_color = "GSG9/SEK"};
			case 7: {_color = "Polizei"};
			case 8: {_color = "Metallica"};
			case 9: {_color = "Monster"};
			
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SealDrop";};
			case 1: {_color = "Polizei";};
			case 2: {_color = "Silver";};
			case 3: {_color = "Orange";};
			case 4: {_color = "SEK/GSG9";};
			case 5: {_color = "Medic";};
			case 6: {_color = "Polygon";};
			case 7: {_color = "Camo";};
			case 8: {_color = "MonsterEnergy";};
			case 9: {_color = "Civil";};
			case 10: {_color = "Civil 2";};
			case 11: {_color = "Batman";};
			case 12: {_color = "Ferrari";};
			case 13: {_color = "Totenkopf";};
			case 14: {_color = "Hello Kitty";};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
			case 2: {_color = "Medic"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Brown"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Black"};
			case 3: {_color = "Blue"};
			case 4: {_color = "Red"};
			case 5: {_color = "White"};
			case 6: {_color = "Digi Green"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "Black"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "Medic"};
			case 15: {_color = "Redbull"};
			case 16: {_color = "Hello Kitty"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "White / Blue"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "ADAC"};
			case 5: {_color = "Medic"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SEK"};
			case 1: {_color = "Donator"};
			case 2: {_color = "Polizei"};
		};
	};

	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "FleckTarn (Rot)"};
			case 1: {_color = "Rebellen Tarnung"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
			case 2: {_color = "RedBull"};
			case 3: {_color = "Barbie"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};

	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
			case 2: {_color = "Medic"};
			case 3: {_color = "SEK/GSG9"};
		};
	};

	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "ADAC"};
			case 2: {_color = "SEK"};
		};
	};
	
	case "B_Heli_Transport_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	
	case "C_Offroad_01_repair_F":
	{
		switch (_index) do
		{
			case 0: {_color = "ADAC"};
		};
	};

	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Camo"};
			case 1: {_color = "SEK"};
		};
	};
	case "B_Truck_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Devil"};
			case 1: {_color = "Hello Kitty"};
		};
	};	
	case "B_Truck_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Devil"};
			case 1: {_color = "Hello Kitty"};
		};
	};
	case "B_Truck_01_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Devil"};
			case 1: {_color = "Hello Kitty"};
		};
	};
		case "B_Truck_01_ammo_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Devil"};
			case 1: {_color = "Hello Kitty"};
		};
	};
};


_color;