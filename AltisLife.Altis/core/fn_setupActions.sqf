/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case west:
	{
		//Straßensperren aufheben
		life_actions = life_actions + [player addAction["Sperre aufheben",life_fnc_packupmauer,"",0,false,false,"",' _mauer = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_mauer" && !isNil {(_mauer getVariable "item")}']];
		//Nagelbänder aufheben
		life_actions = life_actions + [player addAction["Nagelband aufheben",life_fnc_packupSpikes,"",0,false,false,"",' _spikes = nearestObjects[getPos player,["Land_Razorwire_F"],8] select 0; !isNil "_spikes" && !isNil {(_spikes getVariable "item")}']];
		//Lights ON
		life_actions = life_actions + [player addAction["Blaulicht AN",{ [[vehicle player,0.22],"life_fnc_copLights",true,false] spawn BIS_fnc_MP; vehicle player setVariable ["lights",true,true]; },"",0,false,false,"",
		' vehicle player != player && ((typeOf vehicle player) == "C_Offroad_01_F" || (typeOf vehicle player) == "C_SUV_01_F" || (typeOf vehicle player) == "B_MRAP_01_F" || (typeOf vehicle player) == "C_Hatchback_01_F") || (typeOf vehicle player) == "C_Hatchback_01_sport_F" || (typeOf vehicle player) == "B_Heli_Light_01_F" || (typeOf vehicle player) == "B_Heli_Transport_01_F" || (typeOf vehicle player) == "I_Heli_light_03_unarmed_F" || (typeOf vehicle player) == "I_MRAP_03_hmg_F" || (typeOf vehicle player) == "I_MRAP_03_F" ||(typeOf vehicle player) == "B_APC_Wheeled_01_cannon_F" ||(typeOf vehicle player) == "B_MRAP_01_hmg_F" && ((driver vehicle player) == player) && (vehicle player getVariable ["haslights",true]) && !(vehicle player getVariable ["lights",false])']];
		//Lights Off
		life_actions = life_actions + [player addAction["Blaulicht AUS",{ vehicle player setVariable ["lights",false,true]; },"",0,false,false,"",
		' vehicle player != player && ((typeOf vehicle player) == "C_Offroad_01_F" || (typeOf vehicle player) == "C_SUV_01_F" || (typeOf vehicle player) == "B_MRAP_01_F" || (typeOf vehicle player) == "C_Hatchback_01_F") || (typeOf vehicle player) == "C_Hatchback_01_sport_F" || (typeOf vehicle player) == "B_Heli_Light_01_F" || (typeOf vehicle player) == "B_Heli_Transport_01_F" || (typeOf vehicle player) == "I_Heli_light_03_unarmed_F" || (typeOf vehicle player) == "I_MRAP_03_hmg_F" || (typeOf vehicle player) == "I_MRAP_03_F" ||(typeOf vehicle player) == "B_APC_Wheeled_01_cannon_F" ||(typeOf vehicle player) == "B_MRAP_01_hmg_F" && ((driver vehicle player) == player) && (vehicle player getVariable ["lights",false])']];
		//Aussteigen aus Fahrzeugen
		life_actions = life_actions + [player addAction["Aussteigen",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
		//Hinsetzen
		life_actions = life_actions + [player addAction["Hinsetzen",life_fnc_sitDown,cursorTarget,10,false,false,"",' !isNull cursorTarget && (player distance cursorTarget) < 3 && (cursorTarget isKindOf "Land_CampingChair_V1_F" || cursorTarget isKindOf "Land_ChairWood_F" || cursorTarget isKindOf "Land_ChairPlastic_F")']];
		//Aufstehen
		life_actions = life_actions + [player addAction["Aufstehen", life_fnc_sitDown,cursorTarget,10,false,false,"",'life_sitting']];
	};
	
	case civilian:
	{
		//Take The Organs
		life_actions = life_actions + [player addAction["Klaue Organe",life_fnc_takeOrgans,"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
		//Hinsetzen
		life_actions = life_actions + [player addAction["Hinsetzen",life_fnc_sitDown,cursorTarget,10,false,false,"",' !isNull cursorTarget && (player distance cursorTarget) < 3 && (cursorTarget isKindOf "Land_CampingChair_V1_F" || cursorTarget isKindOf "Land_ChairWood_F" || cursorTarget isKindOf "Land_ChairPlastic_F")']];
		//Aufstehen
		life_actions = life_actions + [player addAction["Aufstehen", life_fnc_sitDown,cursorTarget,10,false,false,"",'life_sitting']];
	};
	
	case independent:
	{
		//Lights ON
		life_actions = life_actions + [player addAction["Blaulicht AN",{ [[vehicle player,0.22],"life_fnc_copLights",true,false] spawn BIS_fnc_MP; vehicle player setVariable ["lights",true,true]; },"",0,false,false,"",
		' vehicle player != player && ((typeOf vehicle player) == "C_Offroad_01_F" || (typeOf vehicle player) == "C_SUV_01_F" || (typeOf vehicle player) == "B_MRAP_01_F" || (typeOf vehicle player) == "C_Hatchback_01_F") || (typeOf vehicle player) == "C_Hatchback_01_sport_F" || (typeOf vehicle player) == "B_Heli_Light_01_F" || (typeOf vehicle player) == "C_Offroad_01_repair_F" || (typeOf vehicle player) == "B_Heli_Transport_01_F" || (typeOf vehicle player) == "I_Heli_light_03_unarmed_F" || (typeOf vehicle player) == "I_MRAP_03_hmg_F" || (typeOf vehicle player) == "I_MRAP_03_F" ||(typeOf vehicle player) == "B_APC_Wheeled_01_cannon_F" ||(typeOf vehicle player) == "B_MRAP_01_hmg_F" && ((driver vehicle player) == player) && (vehicle player getVariable ["haslights",true]) && !(vehicle player getVariable ["lights",false])']];
		//Lights Off
		life_actions = life_actions + [player addAction["Blaulicht AUS",{ vehicle player setVariable ["lights",false,true]; },"",0,false,false,"",
		' vehicle player != player && ((typeOf vehicle player) == "C_Offroad_01_F" || (typeOf vehicle player) == "C_SUV_01_F" || (typeOf vehicle player) == "B_MRAP_01_F" || (typeOf vehicle player) == "C_Hatchback_01_F") || (typeOf vehicle player) == "C_Hatchback_01_sport_F" || (typeOf vehicle player) == "B_Heli_Light_01_F" || (typeOf vehicle player) == "C_Offroad_01_repair_F" || (typeOf vehicle player) == "B_Heli_Transport_01_F" || (typeOf vehicle player) == "I_Heli_light_03_unarmed_F" || (typeOf vehicle player) == "I_MRAP_03_hmg_F" || (typeOf vehicle player) == "I_MRAP_03_F" ||(typeOf vehicle player) == "B_APC_Wheeled_01_cannon_F" ||(typeOf vehicle player) == "B_MRAP_01_hmg_F" && ((driver vehicle player) == player) && (vehicle player getVariable ["lights",false])']];
	};
};