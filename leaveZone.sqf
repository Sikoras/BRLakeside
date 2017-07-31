_unit = _this select 0;
cutText ["Return to the play area, or you'll be killed!","PLAIN"];
sleep 15;
if (_unit inArea killZone_Trigger) exitWith {};
_unit setDammage ((getDammage _unit)/3);
sleep 2;
_unit setDammage 1;