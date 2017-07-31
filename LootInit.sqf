if(isServer)then{

// Set probability of loot spawning 1-100%
_probability=50;

// Show loot position and type on map (Debugging)
_showLoot=true;

// Set Weapon loot: Primary weapons, secondary weapons, Sidearms.
weaponsLoot=	[
	"RH_ar10",
	"hlc_rifle_M4",
	"A3L_CZ550",
	"hlc_rifle_CQBR",
	"RH_Hk416c",
	"A3L_AK47",
	"RH_M16A4_m",
	"RH_m9",
	"RH_deagle",
	"RH_fn57",
	"RH_tec9",
	"RH_g17",
	"RH_g18",
	"RH_g22",
	"RH_sbr9",
	"arifle_SDAR_F",
	"KA_MP7_Rifle_Black_40Rnd",
	"RH_M4sbr_b",
	"hlc_smg_mp5sd6"
	];
// Set items: Weapon attachments, first-aid, Binoculars
itemsLoot=		[
	"FHQ_optic_AC11704",
	"A3L_CZ550Scope",
	"optic_ACO_grn",
	"RH_eotexps3_tan",
	"RH_barska_rds",
	"RH_cmore",
	"RH_Delft"
	];
// Set Clothing: Hats, Helmets, Uniforms
clothesLoot=	[
	"A3LMericaShirt",
	"Campaign_Hat_Sheriff",
	"A3L_CivShirtAdidas",
	"A3L_gangster_hat",
	"A3L_CivShirtBillabong",
	"A3L_Mask",
	"A3LCSGOShirt",
	"A3L_SARTrooper_Cap",
	"A3L_ECSO_CID_Jacket3",
	"H_Bandanna_gry",
	"New_AEMT_Uni",
	"H_Watchcap_blk",
	"A3L_FBI_Jacket",
	"H_Cap_police",
	"A3L_Suitblacktie",
	"Masque_Smiley",
	"A3L_EC_CSGT",
	"max_sheriff_Hat",
	"A3L_EC_SOSGT",
	"TRYK_H_woolhat",
	"A3L_SP_FC",
	"U_B_Wetsuit"
	];
// Set Vests: Any vests
vestsLoot=		[
	"A3L_ESCO_DOC_Vest",
	"FBI_TAN_TACTICAL",
	"DON_Vest_Little",
	"MS_Vest_BLK",
	"DON_Vest_Ravenclaw",
	"SERT_FULL_VEST",
	"DON_Vest_Sicario",
	"TRYK_V_Bulletproof_CJ",
	"ECMS_Vest_grn",
	"TRYK_V_Bulletproof_SP_Trooper",
	"TRYK_V_Bulletproof_JCSO"
	];
// Set Backpacks: Any packpacks
backpacksLoot=	["B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_khk","B_Carryall_cbr","B_Carryall_khk","B_Carryall_mcamo","B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_khk"];

// Exclude buildings from loot spawn. Use 'TYPEOF' to find building name
_exclusionList=	["Land_Pier_F","Land_Pier_small_F","Land_NavigLight","Land_LampHarbour_F"];

private ["_distance","_houseList"];
	_mkr=(_this select 0);
	_mkr setmarkerAlpha 0;
	_pos=markerpos _mkr;
		_mkrY= getmarkerSize _mkr select 0;
		_mkrX= getmarkerSize _mkr select 1;

 _distance=_mkrX;
	if (_mkrY > _mkrX) 
			then {
			_distance=_mkrY;
			};

 _houseList= _pos nearObjects ["House",_distance];
						
		{
	_house=_X;

	if (!(typeOf _house in _exclusionList)) 
			then {

		
 for "_n" from 0 to 50 do {
 
	_buildingPos=_house buildingpos _n;
		if (str _buildingPos == "[0,0,0]") exitwith {};
					
				if (_probability > random 100) 
					then {
				null=[_buildingPos,_showLoot] execVM "spawnloot.sqf";
						};	
					};
				};				
	}foreach _houseList;
	
};//ISSERVER