// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"ACE_Vector"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************
#define ANA_WEP ["rhs_weap_ak74","RH_M16A2"]
#define ANA_MAG ["rhs_30Rnd_545x39_AK","30Rnd_556x45_Stanag"]


kit_bund_pl = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Tropentarn_2","CUP_V_I_RACS_Carrier_Vest","tf_rt1523g_big_bwmod_tropen","CUP_H_SLA_BeretRed",""],
	["<PRIMARY WEAPON >>  ","hlc_rifle_G36A1","30Rnd_556x45_Stanag_green",["","","HLC_Optic_G36dualoptic35x",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["HandGrenade",3],["SmokeShellBlue",1],["ACE_Chemlight_HiRed",2],["Chemlight_green",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_bund_sl = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Tropentarn_2","CUP_V_I_RACS_Carrier_Vest_2","tf_rt1523g_big_bwmod_tropen","rhsusf_ach_bare_tan",""],
	["<PRIMARY WEAPON >>  ","hlc_rifle_G36A1","30Rnd_556x45_Stanag_green",["","","HLC_Optic_G36dualoptic35x",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["HandGrenade",3],["SmokeShellBlue",1],["ACE_Chemlight_HiRed",2],["Chemlight_green",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_bund_ftl = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Tropentarn_2","CUP_V_B_MTV_TL","","rhsusf_ach_bare_tan",""],
	["<PRIMARY WEAPON >>  ","hlc_rifle_G36A1","30Rnd_556x45_Stanag_green",["","","HLC_Optic_G36dualoptic35x",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["HandGrenade",3],["SmokeShellBlue",1],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_bund_ar = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Tropentarn_2","CUP_V_B_MTV_MG","CUP_B_GER_Pack_Tropentarn","rhsusf_ach_bare_tan",""],
	["<PRIMARY WEAPON >>  ","hlc_lmg_MG3KWS_b","hlc_100Rnd_762x51_M_MG3",["","acc_pointer_IR","rhsusf_acc_ELCAN",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Glock17_tan","CUP_17Rnd_9x19_glock17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["HandGrenade",3],["PRIMARY MAG",2],["ACE_Chemlight_HiRed",2],["Chemlight_green",2],["HANDGUN MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",1]]]
];
kit_bund_gr = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Tropentarn_2","CUP_V_B_MTV_LegPouch","CUP_B_GER_Pack_Tropentarn","rhsusf_ach_bare_tan",""],
	["<PRIMARY WEAPON >>  ","hlc_rifle_G36A1AG36","30Rnd_556x45_Stanag",["","","HLC_Optic_G36dualoptic35x",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["HandGrenade",3],["PRIMARY MAG",7],["ACE_Chemlight_HiRed",2],["Chemlight_green",2],["1Rnd_HE_Grenade_shell",9]]],
	["<BACKPACK ITEMS >> ",[["ACE_Clacker",1],["DemoCharge_Remote_Mag",2]]]
];
kit_bund_r = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Tropentarn_2","CUP_V_B_MTV_PistolBlack","CUP_B_GER_Pack_Tropentarn","rhsusf_ach_bare_tan",""],
	["<PRIMARY WEAPON >>  ","hlc_rifle_G36A1","30Rnd_556x45_Stanag",["","","HLC_Optic_G36dualoptic35x",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["HandGrenade",3],["ACE_Chemlight_HiRed",2],["Chemlight_green",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["hlc_100Rnd_762x51_M_MG3",3]]]
];
kit_bund_mm = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Tropentarn_2","CUP_V_B_MTV_Marksman","CUP_B_GER_Pack_Tropentarn","CUP_H_Ger_Boonie_desert",""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_G22_des","CUP_5Rnd_762x67_G22",["","","CUP_optic_LeupoldMk4_10x40_LRT_Desert",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Glock17_tan","CUP_17Rnd_9x19_glock17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["ACE_RangeCard",1],["ACE_Kestrel4500",1],["ACE_ATragMX",1],["SmokeShell",1],["ACE_Chemlight_HiRed",2],["Chemlight_green",2],["HandGrenade",3],["PRIMARY MAG",7],["HANDGUN MAG",2]]],
	["<BACKPACK ITEMS >> ",[["rhsusf_weap_MP7A2_desert",1],["rhsusf_mag_40Rnd_46x30_FMJ",2]]]
];
kit_bund_pilot = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Tropentarn_2","CUP_V_B_PilotVest","","CUP_H_BAF_Helmet_Pilot",""],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP5A5","CUP_30Rnd_9x19_MP5",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Glock17_tan","CUP_17Rnd_9x19_glock17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["HandGrenade",3],["PRIMARY MAG",3]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_bund_amm = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Tropentarn_2","CUP_V_B_MTV_Marksman","CUP_B_GER_Pack_Tropentarn","CUP_H_Ger_Boonie_desert",""],
	["<PRIMARY WEAPON >>  ","hlc_rifle_G36A1","30Rnd_556x45_Stanag",["","","HLC_Optic_G36dualoptic35x",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Glock17_tan","CUP_17Rnd_9x19_glock17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",1],["HandGrenade",3],["ACE_Chemlight_HiRed",2],["Chemlight_green",2],["30Rnd_556x45_Stanag_green",8],["HANDGUN MAG",2]]],
	["<BACKPACK ITEMS >> ",[["ACE_ATragMX",1],["ACE_Kestrel4500",1],["ACE_SpottingScope",1],["ACE_Tripod",1],["ACE_EntrenchingTool",1],["ACE_RangeCard",1]]]
];
cargo_kit_bund = [
	[["rhs_weap_maaws",1]],
	[["SmokeShell",5],["SmokeShellBlue",5],["HandGrenade",10],["30Rnd_556x45_Stanag_green",20],["hlc_100Rnd_762x51_M_MG3",10],["rhs_mag_maaws_HE",3],["DemoCharge_Remote_Mag",5],["1Rnd_HE_Grenade_shell",15]],
	[["ACE_fieldDressing",20],["ACE_tourniquet",10],["ACE_Clacker",3]],
	[]
];
cargo_kit_bund_light = [
	[],
	[["SmokeShell",5],["SmokeShellBlue",5],["HandGrenade",5],["30Rnd_556x45_Stanag_green",15],["hlc_100Rnd_762x51_M_MG3",10],["DemoCharge_Remote_Mag",2],["1Rnd_HE_Grenade_shell",15]],
	[["ACE_fieldDressing",10],["ACE_tourniquet",5],["ACE_Clacker",3]],
	[]
];
// Mujahedeen
#define INS_UNI ["CUP_O_TKI_Khet_Partug_04","CUP_O_TKI_Khet_Partug_02","CUP_O_TKI_Khet_Partug_01","CUP_O_TKI_Khet_Partug_05"]
#define INS_HEAD ["CUP_H_TKI_Pakol_1_01","CUP_H_TKI_Pakol_2_06","CUP_H_TKI_Pakol_1_06","CUP_H_TKI_SkullCap_03","CUP_H_TKI_Lungee_05","CUP_H_TKI_Lungee_02"]
#define INS_VEST ["CUP_V_OI_TKI_Jacket4_04","CUP_V_OI_TKI_Jacket4_05","CUP_V_OI_TKI_Jacket2_04","CUP_V_OI_TKI_Jacket2_05","CUP_V_O_Ins_Carrier_Rig"]
#define INS_WEP ["rhs_weap_akm","rhs_weap_akms","rhs_weap_aks74","CUP_srifle_LeeEnfield"]
#define INS_MAG ["rhs_30Rnd_762x39mm","rhs_30Rnd_762x39mm","rhs_30Rnd_545x39_AK","CUP_10x_303_M"]
#define INS_GP ["rhs_weap_akm_gp25","rhs_weap_akms_gp25","rhs_weap_aks74_gp25"]
#define INS_GP_MAG ["rhs_30Rnd_762x39mm","rhs_30Rnd_762x39mm","rhs_30Rnd_545x39_AK"]

kit_ins_random = [
	"kit_ins_fighter"
	,"kit_ins_fighter"
	,"kit_ins_at"
	,"kit_ins_fighter"
	,"kit_ins_mg"
	,"kit_ins_rat"
	,"kit_ins_fighter"
];

kit_ins_fighter =
	[
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ",INS_WEP,INS_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_gr =
	[
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ",INS_GP ,INS_GP_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10]]],
	["<VEST ITEMS >> ",[["rhs_VOG25",10],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_at =
	[
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"CUP_B_AlicePack_Khaki",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ",INS_WEP,INS_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7V_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[["PRIMARY MAG",3]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",4],["rhs_rpg7_type69_airburst_mag",4]]]
];
kit_ins_mg =
	[
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"CUP_B_AlicePack_Khaki",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkm","rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_mm =
	[
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_SVD","CUP_10Rnd_762x54_SVD_M",["","","CUP_optic_PSO_1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_rat =
	[
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ",INS_WEP,INS_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG18","CUP_RPG18_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[]]
];
