_vehicleArray = [
	"ivory_evox_marked",
	"Urbanized_67Mustang_darkred",
	"ADM_1969_Charger",
	"A3L_RX7_Black",
	"A3L_Cooper_concept_black",
	"A3L_Atom",
	"BMW_M5Blue",
	"BMW_M5Red",
	"A3L_CVPI_HWY_Slick_Blue",
	"A3L_Challengerhemi",
	"A3L_F350Red",
	"A3L_JeepRedBlack",
	"A3L_PriusHelloKitty",
	"A3L_Taurus_Sheriff_Slick",
	"shounka_rs6",
	"A3L_BMW_M6_Grey",
	"shounka_buggy",
	"Mrshounka_ducati_p_noir",
	"A3L_EvoX_Black",
	"Urbanized_458Ferrari_black",
	"shounka_f430_spider_grise",
	"shounka_gt",
	"Jonzie_Ambulance_EMS",
	"C_Kart_01_F",
	"ivory_isf",
	"Mrshounka_lykan_c",
	"ivory_evox",
	"A3L_Nissan_GTR_Base",
	"shounka_porsche911",
	"A3L_Smartcar_Black",
	"A3L_Smartcar_Red",
	"ivory_wrx",
	"A3L_LandCruiser"
	];
_lakesideSpawns = [
	"vehicleMarker_1",
	"vehicleMarker_2",
	"vehicleMarker_3",
	"vehicleMarker_4",
	"vehicleMarker_5",
	"vehicleMarker_6",
	"vehicleMarker_7",
	"vehicleMarker_8",
	"vehicleMarker_9",
	"vehicleMarker_10",
	"vehicleMarker_11",
	"vehicleMarker_12",
	"vehicleMarker_13",
	"vehicleMarker_14",
	"vehicleMarker_15",
	"vehicleMarker_16"
	];
_smallvilleSpawns = [
	"vehicleMarker_17",
	"vehicleMarker_18",
	"vehicleMarker_19",
	"vehicleMarker_20",
	"vehicleMarker_21",
	"vehicleMarker_22",
	"vehicleMarker_23",
	"vehicleMarker_24",
	"vehicleMarker_25",
	"vehicleMarker_26",
	"vehicleMarker_27",
	"vehicleMarker_28"
	];
_newHavenSpawns = [
	"vehicleMarker_29",
	"vehicleMarker_30",
	"vehicleMarker_31",
	"vehicleMarker_32",
	"vehicleMarker_33",
	"vehicleMarker_34",
	"vehicleMarker_35",
	"vehicleMarker_36"
	];
	
for[{_i=6}, {_i >= 0}, {_i=_i-1}]do
		{
			_vehicleChoice = _vehicleArray call BIS_fnc_selectRandom;
			_randCount = count _lakesideSpawns;
			_lakesideChoice = random _randCount;
			_lakesideSpawnChoice = _lakesideSpawns deleteAt _lakesideChoice;
			_vehicleSpawned = _vehicleChoice createVehicle getMarkerPos _lakesideSpawnChoice;
			
		};
		
for[{_i=6}, {_i >= 0}, {_i=_i-1}]do
		{
			_vehicleChoice = _vehicleArray call BIS_fnc_selectRandom;
			_randCount = count _smallvilleSpawns;
			_Choice = random _randCount;
			_SpawnChoice = _smallvilleSpawns deleteAt _Choice;
			_vehicleSpawned = _vehicleChoice createVehicle getMarkerPos _SpawnChoice;
		};
		
for[{_i=4}, {_i >= 0}, {_i=_i-1}]do
		{
			_vehicleChoice = _vehicleArray call BIS_fnc_selectRandom;
			_randCount = count _newHavenSpawns;
			_Choice = random _randCount;
			_HavenSpawnChoice = _newHavenSpawns deleteAt _Choice;
			_vehicleSpawned = _vehicleChoice createVehicle getMarkerPos _HavenSpawnChoice;
			
		};