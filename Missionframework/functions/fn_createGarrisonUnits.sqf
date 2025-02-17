/*
    File: fn_createGarrisonUnits.sqf
    Author: PiG13BR - https://github.com/PiG13BR
    Date: 2024-12-17
    Last Update: 2024-12-17
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
       
    Parameter(s):
        _sector - sector to search for structures to spawn garrisoned units [STRING, defaults to ""]
		_objects - sector objects [ARRAY, defaults to []]

    Returns:
        All static weapons created [ARRAY]
*/

if (!isServer) exitWith {};

params[
	["_sector", "", [""]], 
	["_objects", [], [[]]]
];

private _allUnits = [];
if (_sector isEqualTo "") exitWith {["No sector provided in fn_createGarrisonUnits", "WARNING"] call KPLIB_fnc_log; _allUnits};
if (_objects isEqualTo []) exitWith {["No objects in the sector found", "SECTOR"] call KPLIB_fnc_log; _allUnits};
if (KPLIB_o_fixedUnits isEqualTo []) exitWith {_allUnits};
private _sectorpos = markerPos _sector;

// Find garrisons objects
//private _allGarrisons = (nearestObjects [_sectorpos, KPLIB_unitGarrisonConfigs_classes, _radius]) select {alive _x};
private _allGarrisons = _objects select {(typeOf _x) in KPLIB_unitGarrisonConfigs_classes};

private _blacklistGarrisons = (KPLIB_GarrisonsBlacklist_HashMap get _sector);
if (!isNil "_blacklistGarrisons") then {
	{
		{
			_posX = round (parseNumber ((_x # 0) toFixed 2));
			_posY = round (parseNumber ((_x # 1) toFixed 2));
			_posZ = round (parseNumber ((_x # 2) toFixed 2));
			_allGarrisons = _allGarrisons select {!([_posX, _posY, _posZ] isEqualTo [round parseNumber (((getPosATL _x) # 0) toFixed 2), round parseNumber (((getPosATL _x) # 1) toFixed 2), round parseNumber (((getPosATL _x) # 2) toFixed 2)])};
		}forEach _blacklistGarrisons;
	}forEach _allGarrisons;
};

if (count _allGarrisons > 0) then {
	// Loop the garrison objects found
	{
		private _garrison = _x;
		// Loop statics configuration provided in KPLIB_staticsConfigs.sqf
		{
			// Check if the object type matches one of the configuration
			if ((_x # 0 == typeOf _garrison)) then {
				private _group = createGroup KPLIB_side_enemy;
				// Count how many positions are available for static weapons by counting the second element of the main array
				private _positions = count (_x # 1);
				if (_positions > 0) then {
					for "_index" from 0 to (_positions - 1) do {
						// The provided _index number in this loop will select each array that contains the necessary values to spawn correctly the static weapon for each relative position provided in the configuration
						private _type = (((_x # 1) # _index) # 0); // Get the types
						private _relPos = (((_x # 1) # _index) # 1); // Get the relativePosition
						private _relDir = (((_x # 1) # _index) # 2); // Get the rotation
						private _stance = (((_x # 1) # _index) # 3); // Get the posture

						private _typeSel = "";
						// It will select randomly the type if more than one is provided.
						if (count _type > 1) then {
							_typeSel = selectRandom _type;
						} else {
							_typeSel = _type # 0;
						};

						// For the selected type, it will check the static weapons presets
						private _unitClass = "";
						switch _typeSel do {
							case "RANDOM" : {
								_unitClass = selectRandom KPLIB_o_fixedUnits;
							};
							case "MG" : {
								private _mg = KPLIB_o_fixedUnits select {
										_weapons = getArray (configFile >> "CfgVehicles" >> _x >> "weapons");
										{
											if (((_x call BIS_fnc_itemtype) # 1) == "MachineGun") exitWith {true};
											false
										}forEach _weapons;
									};
								_unitClass = selectRandom _mg;
								if (isNil "_unitClass") then {
									_unitClass = selectRandom KPLIB_o_fixedUnits;
								}
							}; 
							case "SNIPER" : {
								private _sniper = KPLIB_o_fixedUnits select {
										_weapons = getArray (configFile >> "CfgVehicles" >> _x >> "weapons");
										{
											if (((_x call BIS_fnc_itemtype) # 1) == "SniperRifle") exitWith {true};
											false
										}forEach _weapons;
									};
								_unitClass = selectRandom _sniper;
								if (isNil "_unitClass") then {
									_unitClass = selectRandom KPLIB_o_fixedUnits;
								}
							};
							case "AT" : { 
								private _at = KPLIB_o_fixedUnits select {
										_weapons = getArray (configFile >> "CfgVehicles" >> _x >> "weapons");
										{
											if (((_x call BIS_fnc_itemtype) # 1) in ["RocketLauncher", "MissileLauncher", "Launcher"]) exitWith {true};
											false
										}forEach _weapons;
									};
								_unitClass = selectRandom _at;
								if (isNil "_unitClass") then {
									_unitClass = selectRandom KPLIB_o_fixedUnits;
								}
							};
						};

                        if (_unitClass isEqualTo "") then {[format ["No static weapon classname found in type %1", _typeSel], "WARNING"] call KPLIB_fnc_log; continue};

						// Create the unit
						private _unit = [(_garrison modelToWorld _relPos), _group, _unitClass, (getDir _garrison + (_relDir)), _stance] call KPLIB_fnc_spawnGarrisonUnit;
					
						_allUnits pushBack _unit;
					};
				};
			}
		}forEach KPLIB_unitGarrisonConfigs;
	}forEach _allGarrisons;
};

_allUnits