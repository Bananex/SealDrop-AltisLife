/*

    File: fn_clearVehicleAmmo.sqf
	Autor: TheTotenkopf™
	
	Description: Entfernt alle Waffen/Flaires und Repairiert sie noch einmal falls beim Spawnen etwas zerstört wurde.

*/
private["_veh","_classname","_vehicle"];

_veh = _this select 0;
_vehicle = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_classname = typeOf _veh;

switch (_classname) do
{	
	//GhostHawk (Black)
    case "B_Heli_Transport_01_F":
    {
        //Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
        systemChat "Waffen entfernt und Repariert";
    };

	//GhostHawk (Camo)
	case "B_Heli_Transport_01_camo_F":
    {
        //Remove ammo and Flaires
        _veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
        systemChat "Waffen entfernt und Repariert";
    };

	//Hellcat (Unarmed)
	case "I_Heli_light_03_unarmed_F":
    {
        //Remove ammo and Flaires
        _veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
        systemChat "Waffen entfernt und Repariert";
    };

	//Ifrit
	case "O_MRAP_02_F":
    {
        //Remove ammo and Flaires
        _veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
        systemChat "Waffen entfernt und Repariert";
    };

	//Mohawk
	case "I_Heli_Transport_02_F":
    {
        //Remove ammo and Flaires
        _veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
        systemChat "Waffen entfernt und Repariert";
    };
	
	//MiniGun Boat
	case "B_Boat_Armed_01_minigun_F":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
	};

	//Strider
	case "I_MRAP_03_F":
	{
		//Remove ammo and Flaires
		_veh setVehicleAmmo 0;
		_veh setDamage 0;
		_veh allowDamage true;
		systemChat "Waffen entfernt und Repariert";
	};
};

clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;