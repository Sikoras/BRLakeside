
"marker_20" setMarkerAlpha 0;
_enoughPlayers = false;
_start = false;
if(isServer) then{
	Null=["lootMarker"]execVM "LootInit.sqf";
	[] execVM "randomVehicleSpawn.sqf";
	hintText = "Waiting for 1 more player";
	[hintText,"hint",true,true] call BIS_fnc_MP;
	waitUntil{(count allPlayers) >=  2};
	_enoughPlayers = true;
	for[{_i=60}, {_i >= 0}, {_i=_i-1}]do
		{
		hintText = format["%1 Seconds till start",_i];
		[hintText,"hint",true,true] call BIS_fnc_MP;
		sleep 1;
		};
		_start = true;
	hintText = "START";
	[hintText,"hint",true,true] call BIS_fnc_MP;
	{
		_spawn = [_x] execVM "randomSpawn.sqf";
	}foreach allPlayers;
	};





if(isServer)then {
	_arryT = triggerArea killZone_Trigger;
	"marker_21" setMarkerAlpha 1;
	"marker_20" setMarkerAlpha 1;
	"marker_21" setMarkerSize[_arryT select 0, _arryT select 1];
	"marker_20" setMarkerSize[_arryT select 0 *0.75, _arryT select 1 *0.75];
	_xArray = [150, -100, 0, 100, 150];
	_yArray = [-150, -100, 0, 100, 150];
	_xNew = selectRandom _xArray;
	_yNew = selectRandom _yArray;
	"marker_21" setMarkerPos getPos killZone_Trigger;
	"marker_20" setMarkerPos (getPos killZone_Trigger vectorAdd[_xNew, _yNew,0]);
	"marker_20" setMarkerAlpha 0;
	sleep 180;
	while {true} do {
		_arry = triggerArea killZone_Trigger;
		_dimensionX = ((_arry select 0) * 0.75);
		_dimensionY = ((_arry select 1) * 0.75);
		killZone_Trigger setTriggerArea [_dimensionX, _dimensionY, 0, false];
		_x = selectRandom _xArray;
		_y = selectRandom _yArray;
		killZone_Trigger setPos [getMarkerPos "marker_20" select 0, getMarkerPos "marker_20" select 1,getMarkerPos "marker_20" select 2];
		"marker_21" setMarkerPos getPos killZone_Trigger;
		"marker_20" setMarkerPos getPos killZone_Trigger;
		"marker_21" setMarkerSize[_dimensionX, _dimensionY];
		"marker_20" setMarkerAlpha 0;
		sleep 45;
		"marker_20" setMarkerAlpha 1;
		"marker_20" setMarkerSize[_dimensionX * 0.75, _dimensionY * 0.75];
		if(_dimensionX >= 300)then{
		"marker_20" setMarkerPos (getPos killZone_Trigger vectorAdd[_x,_y,0]);
		};
		

		
		sleep 45;
		
		
		
	};
};


