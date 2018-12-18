// PLAYER GEAR SCRIPT /////////////////////////////////////////////////////////////////////////////
/*
	- This file is a player gear loadout file.
*/
// INIT ///////////////////////////////////////////////////////////////////////////////////////////
params [["_unit",objNull]];
if !(local _unit) exitWith {};

#include "..\..\..\settings\cfg_Player.sqf"


// APPLY NEW ROLE SPECIFIC LOADOUT ////////////////////////////////////////////////////////////////
_unit setUnitLoadout [
	[
		[_Rifle,_Rifle_Attach1,_Rifle_Attach2,_Rifle_Optic,[],[],_Rifle_Bipod],
		[_LAT,"","","",[_LAT_Ammo,99],[],""],
		[],
		[(selectRandom _Uniform),[]],
		[(selectRandom _Vest),[[_Rifle_Ammo,5,999],[_Rifle_Ammo_T,3,999],[_Grenade,2,1],[_Grenade_Smoke,1,1]]],
		[],(selectRandom _Headgear),(selectRandom _Goggles),
		[],
		["","","ItemRadioAcreFlagged","","ItemWatch",""]
	],true
];

//RADIO
if (var_personalRadio) then {_unit addItem _ACRE_PRR};

//BACKPACKS
if (var_backpacksAll) then {
	_unit addBackpack selectRandom _Backpack_Light; clearAllItemsFromBackpack _unit;
};

//MAP
if (var_playerMaps == 0) then {
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit addItem "ACE_Flashlight_XL50";
};

//REST
for "_i" from 1 to 2 do {_unit addItem "FirstAidKit"};

//NVG
if (var_playerNVG == 0) then {_unit linkItem _NVG};

//PISTOL
if (var_pistolAll) then {
	_unit addWeapon _Pistol;
	_unit addHandgunItem _Pistol_Attach1;
	_unit addHandgunItem _Pistol_Attach2;
	for "_i" from 1 to 3 do {_unit addItem _Pistol_Ammo};
};

//RANK
_unit setRank "PRIVATE";