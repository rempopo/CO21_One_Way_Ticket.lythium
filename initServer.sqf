/*
 *	You can change MissionDate to some specific date to override date set in mission editor:
 *		format:		[@Year, @Month, @Day, @Hours, @Minutes] (e.g. [2012, 12, 31, 12, 45])
 */
MissionDate = [
	date select 0
	, date select 1
	, date select 2
	, switch ("par_daytime" call BIS_fnc_getParamValue) do {
		case 0: { 10 + round(random 4) };
		case 1: { 21 + round(random 8) };
		case 2: { round(random 24) };
	}
	, selectRandom [0,10,15,20,25,30,40,45,50]
];
publicVariable "MissionDate";

/*
 * Date
 */
setDate MissionDate;

/*
 *	Weather
 */
if (!isNil "dzn_fnc_setWeather") then {
	("par_weather" call BIS_fnc_getParamValue) spawn dzn_fnc_setWeather;
};


/*
 *	Collect Some Player connection data
 */
PlayerConnectedData = [];
PlayerConnectedEH = addMissionEventHandler ["PlayerConnected", {
	diag_log "Client connected";
	diag_log _this;
	// [ DirectPlayID, getPlayerUID player, name player, @bool, clientOwner ]
	PlayerConnectedData pushBack _this;
	publicVariable "PlayerConnectedData";
}];


[] spawn {
	waitUntil {!isNil "dzn_dynai_initialized" && { dzn_dynai_initialized } };
	waitUntil {time > 0};
	waitUntil {!isNil "players_detected"};
	patrol_hill_167 call dzn_fnc_dynai_activateZone;
	patrol_hill_136 call dzn_fnc_dynai_activateZone;
	[patrol_hill_167, [getPosATL bait_1,getPosATL bait_2,getPosATL bait_3,getPosATL bait_4]] call dzn_fnc_dynai_setZoneKeypoints;
	[patrol_hill_136, [getPosATL bait_1,getPosATL bait_2,getPosATL bait_3,getPosATL bait_4]] call dzn_fnc_dynai_setZoneKeypoints;
};

[] spawn {
	waitUntil {!alive TGT1 && !alive TGT2};
	deleteVehicle TGT1 && deleteVehicle TGT2;
}:
