_unit = (_this select 0);
//damagePlayer = true;  
 hint "You are outside the play area!!!";  
//  for[{_i=10}, {_i >=0}, {_i =_i-1}]do 
// { 
  sleep 20;
//  if (_unit inArea killZone_Trigger) exitWith {damagePlayer = false}; 
// }; 
// if(!damagePlayer) then {hint "You are back in the play area!"};  
// if(damagePlayer) then {_unit setDamage 1};
_unit setDamage 1;