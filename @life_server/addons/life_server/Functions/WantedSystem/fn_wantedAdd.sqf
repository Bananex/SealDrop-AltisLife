/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
	case "187V": {_type = ["Überfahren eines Spielers",1234567]};
	case "187": {_type = ["Mord",1234567]};
	case "901": {_type = ["Ausbruch aus dem Gefängnis",1234567]};
	case "261": {_type = ["Rape",5000]}; //What type of sick bastard would add this?
	case "261A": {_type = ["Attempted Rape",3000]};
	case "215": {_type = ["Versuchter Fahrzeugdiebstahl",10000]};
	case "213": {_type = ["Use of illegal explosives",10000]};
	case "211": {_type = ["Raubueberfall",60000]};
	case "207": {_type = ["Geiselnahme",1234567]};
	case "207A": {_type = ["Versuchte Geiselnahme",1234567]};
	case "487": {_type = ["Fahrzeugdiebstahl",20000]};
	case "488": {_type = ["Diebstahl",15000]};
	case "480": {_type = ["Hit and run",1300]};
	case "481": {_type = ["Drogenbesitz",1234567]};
	case "482": {_type = ["Intent to distribute",5000]};
	case "483": {_type = ["Drogenhandel",1234567]};
	case "459": {_type = ["Hauseinbruch",50000]};
	case "390": {_type = ["Einfluss unter Alkoholeinfluss",15000]};
	case "919": {_type = ["Organ Handel",50000]};
	
	case "1": {_type = ["Fahren ohne Fuehrerschein",15000]};
    case "2": {_type = ["Versuchter Fahrzeugdiebstahl",10000]};
    case "3": {_type = ["Fuehren eines gestohlenen Fahrzeugs",20000]};
    case "4": {_type = ["Fahren ohne Licht",1500]};
    case "5": {_type = ["Ueberhoehte Geschwindigkeit",6000]};
    case "6": {_type = ["Gefaehrliche Fahrweise",7500]};
    case "7": {_type = ["Versuchter Diebstahl e. Polizeifahrzeugs",15000]};
    case "8": {_type = ["Diebstahl von Polizeifahrzeugen",25000]};
    case "9": {_type = ["Landen ohne Genehmigung",20000]};
    case "10": {_type = ["Fahren von illegalen Fahrzeugen", 100000]};
    case "11": {_type = ["Unfallverursacher / Fahrerflucht nach Unfall",5000]};
    case "12": {_type = ["Flucht vor der Polizei",17500]};
    case "13": {_type = ["Ueberfahren eines anderen Spielers",30000]};
    case "14": {_type = ["Illegale Strassensperren",15000]};
    case "15": {_type = ["Widerstand gegen die Staatsgewalt",45000]};
    case "16": {_type = ["Nicht befolgen e. pol. Anordnung",5000]};
    case "17": {_type = ["Beamtenbeleidigung",15000]};
    case "18": {_type = ["Belaestigung eines Polizisten",14000]};
    case "19": {_type = ["Betreten einer pol. Sperrzone",50000]};
    case "20": {_type = ["Toeten eines Polizisten",1234567]};
    case "21": {_type = ["Beschuss auf Polizei/Beamte/Eigentum",1234567]};
    case "22": {_type = ["Zerstoerung von Polizeieigentum",15000]};
    case "23": {_type = ["Drogendelikte",1234567]};
    case "24": {_type = ["Waffenbesitz ohne Lizenz",70000]};
    case "25": {_type = ["Mit gez. Waffe durch Stadt",50000]};
    case "26": {_type = ["Besitz einer illegalen Waffe",150000]};
    case "27": {_type = ["Abfeuern einer Waffe innerhalb einer Stadt",50000]};
    case "28": {_type = ["Geiselnahme",1234567]};
    case "29": {_type = ["Raubeuberfall",60000]};
    case "30": {_type = ["Bankraub",1234567]};
    case "31": {_type = ["Mord",1234567]};
    case "32": {_type = ["Aufstand",75000]};
    case "33": {_type = ["Angriff durch Rebellen",75000]};
    case "34": {_type = ["Angriff/Belagerung von Staedten/Checkpoints",1234567]};
    case "35": {_type = ["Landung in einer Flugverbotszone",75000]};
    case "36": {_type = ["Fliegen/Schweben unterhalb 150m ueber Stadt",20000]};
    case "37": {_type = ["Ausbruch aus dem Gefaengnis",1234567]};
    case "38": {_type = ["Fliegen ohne Fluglizenz",50000]};
    case "39": {_type = ["Dauerhaftes hupen",7500]};
    case "40": {_type = ["Handel mit exotischen Guetern",50000]};
	case "41": {_type = ["Umfahren eines Außenpostens",25000]};
	case "42": {_type = ["Kraftwerk manipulation",25000]};
	
	case "120S": {_type = ["Überhöte Geschwindigkeit",5000]};
	case "120H": {_type = ["Gewohntes Fahren",8000]};
	case "120WL": {_type = ["Driving W/O License",8000]};
	case "120FS": {_type = ["Gefährliche Fahrweise",8000]};
	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes pushBack (_type select 0);
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
	else
{
	life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
};