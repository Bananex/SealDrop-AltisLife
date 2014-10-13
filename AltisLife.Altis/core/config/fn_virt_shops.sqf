/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Markt",["water","rabbit","apple","storagebig","storagesmall","bottledbeer","bottledwhiskey","redgull","battery","tbacon","lockpick","pickaxe","zipties","peach","boltcutter","blastingcharge"]]};
	case "rebel": {["Rebel Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge"]]};
	case "gang": {["Gang Market", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle","moonshine"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana","methp"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","mauer","battery","painkillers","redgull","defusekit"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "beer": {["Schnaps Laden",["wine"]]};
	case "pharmacy": {["Apotheke",["painkillers","morphium","scalpel","kidney"]]};
	case "medic": {["Arztbedarf",["apple","donuts","coffee","battery","redgull","fuelF"]]};
	case "speakeasy": {["Speakeasy's",["bottledbeer","bottledwhiskey","bottledshine"]]};
	case "bar": {["The Lounge",["bottles","cornmeal"]]};
	case "uranium": {["Marchand Uranium",["uranium","puranium"]]};
};