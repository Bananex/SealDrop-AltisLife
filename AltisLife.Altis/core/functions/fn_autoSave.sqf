/* 
	Author: TheTotenkopf für SealDrop.de
*/

while {true} do {
	sleep 1800;
	[] call SOCK_fnc_updateRequest;
	hint "Deine Spielerinformationen wurden automatisch zum Server gespeichert.\n\n Nächster AutoSave in: 30 Minuten"
};