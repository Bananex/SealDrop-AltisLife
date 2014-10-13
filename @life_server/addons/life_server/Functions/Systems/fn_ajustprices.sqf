/*
File: fn_ajustprices.sqf
Author: worldtrade1101


Description:
Sends a request to update and adjust the price of stuff in the DB.
*/


//[[0,player,life_shop_type,_amount,_price,_var],"TON_fnc_Adjustprices",false,false] spawn life_fnc_MP;
private["_type","_side","_data","_unit","_ret","_tickTime","_queryResult","_var","_price","_amount"];
_type = [_this,0,0,[0]] call BIS_fnc_param;
_unit = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_data = [_this,2,"",[""]] call BIS_fnc_param;
_amount = [_this,3,0,[0]] call BIS_fnc_param;
_price = [_this,4,0,[0]] call BIS_fnc_param;
_var = [_this,5,"",[""]] call BIS_fnc_param;




//Error checks


diag_log format ["%1   %2    %3    %4      %5      %6",_unit,_type,_data,_amount,_price,_var];
if( (_data == "") OR (isNull _unit)) exitWith
{
diag_log "data ou type ou unit null";
};


_unit = owner _unit; //for hack purpose!


//we randomize the thing to not update every single transaction
_randomnumber = random 100;


if (_randomnumber < 60) exitwith {diag_log "This transaction doesn't update the price!"};




//we check the factor of the object
_query = format["SELECT factor FROM economy WHERE ressource='%1'",_var];


waitUntil{sleep (random 0.3); !DB_Async_Active};
_tickTime = diag_tickTime;
_queryResult = [_query,2,true] call DB_fnc_asyncCall;


diag_log "------------- Client Query Request -------------";
diag_log format["QUERY: %1",_query];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";


if (((_queryResult select 0) select 0) == "0") exitwith {};//the factor 0 is not a real group


_group = parseNumber((_queryResult select 0) select 0);


_query = format["SELECT ressource, buyprice, sellprice, varprice, minprice, maxprice FROM economy WHERE factor='%1'",_group];


if(_query == "Error") exitWith {


diag_log "error";
};


waitUntil{sleep (random 0.3); !DB_Async_Active};
_tickTime = diag_tickTime;
_queryResult = [_query,2,true] call DB_fnc_asyncCall;


diag_log "------------- Client Query Request -------------";
diag_log format["QUERY: %1",_query];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";
_sellingfactor =((count _queryResult)-1);
_query ="";
_queryArray = [];
_AllOk = TRUE;
{
//diag_log format ["test : %1 (%2)", _this , typeName _this];
//diag_log format ["var : %1 (%2)", _var , typeName _var];
_ressource = _x select 0;
//diag_log format ["ressource : %1 (%2)", _ressource  , typeName _ressource ];
_buyprice =  (_x select 1);
_sellprice =  (_x select 2);
_varprice =  (_x select 3);
_minprice = (_x select 4);
_maxprice = (_x select 5);


if (_ressource == _var) then { //C'est l'item vendu ou achete
if (_type == 0) then {//si on vend l'item
if (_buyprice != 0) then {if( (_buyprice - (_varprice * _amount)) > _minprice) then {_buyprice= _buyprice - (_varprice * _amount);}else {_allOk = false;};};
if ((_sellprice - (_varprice * _amount *_sellingfactor)) > _minprice) then {_sellprice = _sellprice - (_varprice * _amount *_sellingfactor);}else {_allOk = false;};
if (_buyprice != 0) then {if ((_sellprice >= _buyprice)) then {_buyprice=_sellprice + 15};};
} else {//si on achete l'item
if (_buyprice != 0) then {if( (_buyprice + (_varprice * _amount)) < (_maxprice+15)) then {_buyprice = _buyprice + (_varprice * _amount);}else {_allOk = false;};};
if ((_sellprice + (_varprice * _amount)) < _maxprice) then {_sellprice = _sellprice + (_varprice * _amount);}else {_allOk = false;};
};


} else {
if (_type == 0) then {//si on a vendu un autre item on augmente le prix
if (_buyprice != 0) then {if( (_buyprice + (_varprice * _amount)) < (_maxprice)) then {_buyprice = _buyprice + (_varprice * _amount);}else {_allOk = false;};};
if ((_sellprice + (_varprice * _amount)) < _maxprice) then {_sellprice = _sellprice + (_varprice * _amount);} else {_allOk = false;};


} else { //si on achete un autre item on baisse le prix
if (_buyprice != 0) then {if( (_buyprice - (_varprice * _amount)) > _minprice ) then {_buyprice= _buyprice - (_varprice * _amount);} else {_allOk = false;};};
if ((_sellprice - (_varprice * _amount)) > _minprice) then {_sellprice = _sellprice - (_varprice * _amount);}else {_allOk = false;};
};
};
_query =format["UPDATE economy SET buyprice='%1', sellprice='%2' WHERE ressource='%3'",_buyprice,_sellprice,_ressource];
_queryArray set [count _queryArray,_query];


}foreach _queryResult;
if (_AllOk) then { //We update the prices!
{
waitUntil {sleep (random 0.3); !DB_Async_Active};
_queryResult = [_x,1] call DB_fnc_asyncCall;
diag_log "------------- Client Query Request -------------";
diag_log format["QUERY: %1",_x];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";
}foreach _queryArray;
};