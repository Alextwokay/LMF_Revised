// AI UPDATE WAYPOINT FUNCTION ////////////////////////////////////////////////////////////////////
/*
	- Originally by alex2k, revised by Drgn V4karian.
	- This function assigns the AI with a guard type waypoint each 180 seconds.
*/
// INIT ///////////////////////////////////////////////////////////////////////////////////////////
params [["_grp",grpNull,[grpNull]]];

while {count units _grp > 0} do {

	if (count waypoints _grp > 0) then {
		{deleteWaypoint ((wayPoints _grp) select 0);} count wayPoints _grp;
	};
	private _wp =_grp addWaypoint [getpos leader _grp, 0];
	_wp setWaypointType "GUARD";

	//SET WAYPOINT ON ENEMY IF POSSIBLE (SOMETIMES WAYPOINT IS 0 SOMETIMES 1)
	if ( !isNull ((leader _grp) findNearestEnemy (leader _grp)) ) then {
		{[_grp, _x] setWaypointPosition [getPosATL ((leader _grp) findNearestEnemy (leader _grp)), 25]} forEach [0,1];
	};

	sleep 180;
};