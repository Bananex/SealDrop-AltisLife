#include <macro.h> 
/*
	File: fn_welcome.sqf
	Author: TheTotenkopf (SealDrop.de)
	
	Description:
	Erstellt ein schönen Regel Screen
*/

//Start erst nach Spawn
waitUntil{!isNull (findDisplay 38500)};
waitUntil{isNull (findDisplay 38500)};

private ["_text","_intro"];

_intro = [];
_text = [];

switch (playerSide) do
{
	case west: 
	{
        _text = [
			format ["<t align='left'><t color='#ff1111'>Bitte halte dich auf unserem Server ans RolePlay, betrachte dies als deine erste und letzte Warnung!</t>"],
			format ["<t align='left'>Wenn das dein erster Besuch auf unserem Server ist, bitten wir dich, die Regeln genauestens durchzulesen. Dies kannst Du in unserem Forum: SealDrop.de tun.</t>"],
			format ["<t align='left'>Solltest du dich nun fragen welcher Rohstoff dir am schnellsten und meisten Geld bringt, drücke <t color='#FF8000'>Z</t> und klicke auf Börse. Die Börse hat immer die aktuellsten Informationen zu den Rohstoffpreisen für dich, da wir in einer dynamischen Wirtschaft leben werden die Preise sich auch immer ändern im Verhältniss zu der Menge an Rohstoffen die gerade verfügbar sind.</t>"],
			format ["<t align='left'>Desyncs: Die meisten Desyncs sind durch die Clients bedingt, bei einer Framerate unter 30 FPS ist der Armaclient überlastet und hat Probleme die Netzwerkkommunikation zu verwalten.</t>"],
			format ["<t align='left'><t color='#ff1111'>AltisLife befindet sich gegenwärtig in der BETAPHASE. Verluste und Schäden durch RDM,VRDM etc. werden NICHT erstattet!</t>"],
			format ["<t align='left'>Die Admins wünschen dir viel Spaß auf diesem Server.</t>"],
			format ["<t align='left' color='#428BCA'>TS3 : SealDrop.de</t>"],
			format ["<t align='left' color='#428BCA'>Forum : http://sealdrop.de/</t>"]
		];
	};
	case independent:
	{
        _text = [
			format ["<t align='left'><t color='#ff1111'>Bitte halte dich auf unserem Server ans RolePlay, betrachte dies als deine erste und letzte Warnung!</t>"],
			format ["<t align='left'>Wenn das dein erster Besuch auf unserem Server ist, bitten wir dich, die Regeln genauestens durchzulesen. Dies kannst Du in unserem Forum: SealDrop.de tun.</t>"],
			format ["<t align='left'>Solltest du dich nun fragen welcher Rohstoff dir am schnellsten und meisten Geld bringt, drücke <t color='#FF8000'>Z</t> und klicke auf Börse. Die Börse hat immer die aktuellsten Informationen zu den Rohstoffpreisen für dich, da wir in einer dynamischen Wirtschaft leben werden die Preise sich auch immer ändern im Verhältniss zu der Menge an Rohstoffen die gerade verfügbar sind.</t>"],
			format ["<t align='left'>Desyncs: Die meisten Desyncs sind durch die Clients bedingt, bei einer Framerate unter 30 FPS ist der Armaclient überlastet und hat Probleme die Netzwerkkommunikation zu verwalten.</t>"],
			format ["<t align='left'><t color='#ff1111'>AltisLife befindet sich gegenwärtig in der BETAPHASE. Verluste und Schäden durch RDM,VRDM etc. werden NICHT erstattet!</t>"],
			format ["<t align='left'>Die Admins wünschen dir viel Spaß auf diesem Server.</t>"],
			format ["<t align='left' color='#428BCA'>TS3 : SealDrop.de</t>"],
			format ["<t align='left' color='#428BCA'>Forum : http://sealdrop.de/</t>"]
		];
	};
	case civilian:
	{
        _text = [
			format ["<t align='left'><t color='#ff1111'>Bitte halte dich auf unserem Server ans RolePlay, betrachte dies als deine erste und letzte Warnung!</t>"],
			format ["<t align='left'>Wenn das dein erster Besuch auf unserem Server ist, bitten wir dich, die Regeln genauestens durchzulesen. Dies kannst Du in unserem Forum: SealDrop.de tun.</t>"],
			format ["<t align='left'>Solltest du dich nun fragen welcher Rohstoff dir am schnellsten und meisten Geld bringt, drücke <t color='#FF8000'>Z</t> und klicke auf Börse. Die Börse hat immer die aktuellsten Informationen zu den Rohstoffpreisen für dich, da wir in einer dynamischen Wirtschaft leben werden die Preise sich auch immer ändern im Verhältniss zu der Menge an Rohstoffen die gerade verfügbar sind.</t>"],
			format ["<t align='left'>Desyncs: Die meisten Desyncs sind durch die Clients bedingt, bei einer Framerate unter 30 FPS ist der Armaclient überlastet und hat Probleme die Netzwerkkommunikation zu verwalten.</t>"],
			format ["<t align='left'><t color='#ff1111'>AltisLife befindet sich gegenwärtig in der BETAPHASE. Verluste und Schäden durch RDM,VRDM etc. werden NICHT erstattet!</t>"],
			format ["<t align='left'>Die Admins wünschen dir viel Spaß auf diesem Server.</t>"],
			format ["<t align='left' color='#428BCA'>TS3 : SealDrop.de</t>"],
			format ["<t align='left' color='#428BCA'>Forum : http://sealdrop.de/</t>"]
		];
	};
};

{
	_intro set [count _intro, (parseText _x)];
} forEach _text;
        
format ["Hallo %1, Willkommen auf unserem Server !", name player] hintC _intro;