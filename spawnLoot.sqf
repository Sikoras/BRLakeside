if(isServer)then{
_pos=	(_this select 0);
_pos0=	(_pos select 0);
_pos1=	(_pos select 1);
_pos2=	(_pos select 2);
_showLoot=	(_this select 1);

	_BARREL = createVehicle ["Land_BarrelEmpty_F",[_pos0,_pos1,_pos2+0.1], [], 0, "can_Collide"];
		sleep 0.5;
		_holder = createVehicle ["groundweaponholder",[_pos0,_pos1,(getposATL _BARREL select 2)], [], 0, "can_Collide"];
			deletevehicle _BARREL;
			
_type=floor (random 4);


						
// Spawn Weapon
 if (_type == 0) 
		then {
	_weapon= weaponsLoot call bis_fnc_selectRandom; 
	
		_magazines = getArray (configFile / "CfgWeapons" / _weapon / "magazines");
		_magazineClass = _magazines call bis_fnc_selectRandom; 

	_holder addWeaponCargoGlobal [_weapon, 1];
	 _holder addMagazineCargoGlobal [_magazineClass, 2];
				};
					
					
// Spawn Magazines
 if (_type == 1) 
		then {
	_weapon= weaponsLoot call bis_fnc_selectRandom; 
		_magazines = getArray (configFile / "CfgWeapons" / _weapon / "magazines");
		_magazineClass = _magazines call bis_fnc_selectRandom; 

	 _holder addMagazineCargoGlobal [_magazineClass, 2];
				};	
					
					
// Spawn Items
 if (_type == 2) 
		then {
	_item= itemsLoot call bis_fnc_selectRandom;
	 _holder addItemCargoGlobal [_item, 1];
	
	_clothing= clothesLoot call bis_fnc_selectRandom;
	 _holder addItemCargoGlobal [_clothing, 1];
				};	
					
					
// Spawn Vests
 if (_type == 3) 
		then {
	_vest= vestsLoot call bis_fnc_selectRandom;
	 _holder addItemCargoGlobal [_vest, 1];
				};
					
					
// Spawn Backpacks
 if (_type == 4) 
		then {

				};
};//IsServer 