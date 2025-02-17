/*
	File: fn_clearGarbage.sqf
	Author: PIG13BR
	Date: 2024-16-08
	Last Update: 2024-18-09
	
	Description:
		Deletes dead units and damaged enemy empty vehicles
	
	Parameter(s):
		-
	
	Returns:
		-
*/
_deadVehicles = [];

// Get only enemy side vehicles, damaged and with no crew in it
_deadVehicles = vehicles select {
	((_x isKindOf "landVehicle") && (_x isKindOf "Air") && ((toLower (typeOf _x)) in KPLIB_o_allVeh_classes) && 
	(damage _x > 0.01)) && 
	((count (crew _x)) == 0)
};

private _deadVehNum = count _deadVehicles;
private _deadMenNum = count allDeadMen;

if (_deadVehNum > 0) then {
	{
		deleteVehicle _x;
	}forEach _deadVehicles;
};

sleep 1;

if (_deadMenNum > 0) then {
	{
		deleteVehicle _x;
	}forEach allDeadMen;
};

sleep 1;

hint (parseText (format[["<t size='1.3'>", localize "STR_VEHICLES_CLEARED", "</t><br/>%1<br/><br/><t size='1.3'>", localize "STR_UNITS_CLEARED", "</t><br/>%2"] joinString "", _deadVehNum, _deadMenNum]));