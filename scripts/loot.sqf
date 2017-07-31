_unit = _this select 0;
_addActionID = _this select 2;

_unit removeAction _addActionID;

_markerPos = getMarkerPos "lootMarker";

_weaponArray = [
	"RH_ar10",
	"hlc_rifle_M4",
	"A3L_CZ550",
	"arifle_SA_m4a1_sopmod",
	"RH_Hk416c",
	"arifle_AKM_F",
	"RH_M16A4_m",
	"RH_m9",
	"RH_deagle",
	"RH_fn57",
	"RH_tec9"
	];
	
_itemArray = [
	"FHQ_optic_AC11704",
	"A3L_CZ550Scope",
	"optic_ACO_grn",
	"RH_eotexps3_tan"
	];
	
_houseArray = _markerPos nearObjects ["house",300];
 if(isServer) then
	{
		_buildingPositions = [_x] call BIS_fnc_buildingPositions;
		{
			_weapon = _weaponArray select(floor (random (count _weaponArray)));
			_itemBox = "WeaponHolderSimulated" createVehicle [0,0,0];
			_itemBox setPos _x;
			_itemBox addWeaponCargoGlobal [_weapon,1];
			_magazines = getArray (configFile >> "CfgWeapons" >> _weapon >> "magazines");
			_mag = _magazines select(floor (random (count _magazines)));
			_itemBox addMagazineCargoGlobal[_mag, 3];
		}forEach _buildingPositions;
		{
			_item = _itemArray select(floor (random (count _itemArray)));
			_itemBox2 = "WeaponHolderSimulated" createVehicle [0,0,0];
			_itemBox2 setPos _x;
			_itemBox2 addItemCargoGlobal [_item,1];
		}forEach _buildingPositions;
	} forEach _houseArray;