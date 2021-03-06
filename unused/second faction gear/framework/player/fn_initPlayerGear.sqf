// PLAYER GEAR ASSIGNING //////////////////////////////////////////////////////////////////////////
/*
	* Author: G4rrus
	* Apply "role" specific loadout to a unit.
	* Note: Needs to be local to the object.
	*
	* Arguments:
	* 0: Unit <OBJECT>
	*
	* Example:
	* [cursorObject] call lmf_player_fnc_initPlayerGear;
	*
	* Return Value:
	* <BOOL> true if settings were applied else false
*/
// INIT ///////////////////////////////////////////////////////////////////////////////////////////
params [["_unit",objNull,[objNull]]];

//EXIT IF NOT LOCAL OR NULL
if (isNull _unit || {!local _unit}) exitWith {false};

private _role = typeOf _unit;


// CALL LOADOUT /////////////////////////////////////////////////////////////////////////
if (side _unit == independent) then {
	#include "..\..\settings\cfg_Player_2.sqf"

	if (_role isEqualTo _PlatoonLeader) exitWith {_unit call lmf_loadout_2_fnc_platoonLeader};
	if (_role isEqualTo _PlatoonSgt) exitWith {_unit call lmf_loadout_2_fnc_platoonSergeant};
	if (_role isEqualTo _RTO) exitWith {_unit call lmf_loadout_2_fnc_rto};
	if (_role isEqualTo _FAC) exitWith {_unit call lmf_loadout_2_fnc_fac};
	if (_role isEqualTo _SquadLeader) exitWith {_unit call lmf_loadout_2_fnc_squadLeader};
	if (_role isEqualTo _TeamLeader) exitWith {_unit call lmf_loadout_2_fnc_teamLeader};
	if (_role isEqualTo _Rifleman) exitWith {_unit call lmf_loadout_2_fnc_rifleman};
	if (_role isEqualTo _Grenadier) exitWith {_unit call lmf_loadout_2_fnc_grenadier};
	if (_role isEqualTo _Autorifleman) exitWith {_unit call lmf_loadout_2_fnc_autorifleman};
	if (_role isEqualTo _Marksman) exitWith {_unit call lmf_loadout_2_fnc_marksman};
	if (_role isEqualTo _Medic) exitWith {_unit call lmf_loadout_2_fnc_medic};
	if (_role isEqualTo _AmmoBearer) exitWith {_unit call lmf_loadout_2_fnc_ammoBearer};
	if (_role isEqualTo _MachineGunner) exitWith {_unit call lmf_loadout_2_fnc_machineGunner};
	if (_role isEqualTo _MgAssistant) exitWith {_unit call lmf_loadout_2_fnc_machineGunnerAssistant};
	if (_role isEqualTo _AntiTankGunner) exitWith {_unit call lmf_loadout_2_fnc_atGunner};
	if (_role isEqualTo _AtAssistant) exitWith {_unit call lmf_loadout_2_fnc_atAssistant};
	if (_role isEqualTo _Engineer) exitWith {_unit call lmf_loadout_2_fnc_engineer};
	if (_role isEqualTo _Crew) exitWith {_unit call lmf_loadout_2_fnc_crew};
	if (_role isEqualTo _HeloPilot) exitWith {_unit call lmf_loadout_2_fnc_heloPilot};
	if (_role isEqualTo _HeloCrew) exitWith {_unit call lmf_loadout_2_fnc_heloCrew};
	if (_role isEqualTo _Pilot) exitWith {_unit call lmf_loadout_2_fnc_pilot};
} else {
	#include "..\..\settings\cfg_Player.sqf"

	if (_role isEqualTo _PlatoonLeader) exitWith {_unit call lmf_loadout_fnc_platoonLeader};
	if (_role isEqualTo _PlatoonSgt) exitWith {_unit call lmf_loadout_fnc_platoonSergeant};
	if (_role isEqualTo _RTO) exitWith {_unit call lmf_loadout_fnc_rto};
	if (_role isEqualTo _FAC) exitWith {_unit call lmf_loadout_fnc_fac};
	if (_role isEqualTo _SquadLeader) exitWith {_unit call lmf_loadout_fnc_squadLeader};
	if (_role isEqualTo _TeamLeader) exitWith {_unit call lmf_loadout_fnc_teamLeader};
	if (_role isEqualTo _Rifleman) exitWith {_unit call lmf_loadout_fnc_rifleman};
	if (_role isEqualTo _Grenadier) exitWith {_unit call lmf_loadout_fnc_grenadier};
	if (_role isEqualTo _Autorifleman) exitWith {_unit call lmf_loadout_fnc_autorifleman};
	if (_role isEqualTo _Marksman) exitWith {_unit call lmf_loadout_fnc_marksman};
	if (_role isEqualTo _Medic) exitWith {_unit call lmf_loadout_fnc_medic};
	if (_role isEqualTo _AmmoBearer) exitWith {_unit call lmf_loadout_fnc_ammoBearer};
	if (_role isEqualTo _MachineGunner) exitWith {_unit call lmf_loadout_fnc_machineGunner};
	if (_role isEqualTo _MgAssistant) exitWith {_unit call lmf_loadout_fnc_machineGunnerAssistant};
	if (_role isEqualTo _AntiTankGunner) exitWith {_unit call lmf_loadout_fnc_atGunner};
	if (_role isEqualTo _AtAssistant) exitWith {_unit call lmf_loadout_fnc_atAssistant};
	if (_role isEqualTo _Engineer) exitWith {_unit call lmf_loadout_fnc_engineer};
	if (_role isEqualTo _Crew) exitWith {_unit call lmf_loadout_fnc_crew};
	if (_role isEqualTo _HeloPilot) exitWith {_unit call lmf_loadout_fnc_heloPilot};
	if (_role isEqualTo _HeloCrew) exitWith {_unit call lmf_loadout_fnc_heloCrew};
	if (_role isEqualTo _Pilot) exitWith {_unit call lmf_loadout_fnc_pilot};
};

// RETURN /////////////////////////////////////////////////////////////////////////////////////////
false