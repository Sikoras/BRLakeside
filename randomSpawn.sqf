_unit = _this select 0;

_pos = [
	"marker_1",
	"marker_2",
	"marker_3",
	"marker_4",
	"marker_5",
	"marker_6",
	"marker_7",
	"marker_8",
	"marker_9",
	"marker_10",
	"marker_11",
	"marker_12",
	"marker_13",
	"marker_14",
	"marker_15",
	"marker_16",
	"marker_17",
	"marker_18",
	"marker_19",
	"marker_22",
	"marker_23",
	"marker_24",
	"marker_25",
	"marker_26",
	"marker_27",
	"marker_28",
	"marker_29",
	"marker_30",
	"marker_31",
	"marker_32",
	"marker_33",
	"marker_34",
	"marker_35",
	"marker_36",
	"marker_37",
	"marker_38",
	"marker_39",
	"marker_40",
	"marker_41"
	];
	

_startPos = _pos call BIS_fnc_selectRandom;

_unit setPos (getMarkerPos _startPos);

_unit enableStamina false;

_unit setDir (markerDir _startPos);

_unit allowDamage true;