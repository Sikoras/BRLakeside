_unit = _this select 0;
_name = name vehicle _unit;
hintText = format["CONGRATULATIONS %1 YOU WIN",_name];
[hintText,"hint",true,true] call BIS_fnc_MP;
Sleep 20;
endMission "END1";