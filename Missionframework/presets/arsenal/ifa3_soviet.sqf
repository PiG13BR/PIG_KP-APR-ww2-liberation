/*
    File: ifa3_ger.sqf
    Author: PiG13BR - https://github.com/PiG13BR
    Date: 2024-11-13
    Last Update: 2024-12-16
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        IFA3 Soviet arsenal preset
*/

// Custom Arsenal Preset
KPLIB_arsenalWeapons = [
	// Rifles
	"LIB_M9130",
	"LIB_M9130PU",
	"LIB_M38",
	"LIB_M44",
	"MJ_AVS36",
	"RBC_AVT",
	"RBC_avt_fed",
	"LIB_SVT_40",

	// Submachine gun
	"LIB_PPSh41_m",
	"LIB_PPSh41_d",
	"IFA3_PPS43",
	"PPD40",
	"Suomi_d",

	// Machinegun
	"LIB_DP28",
	"LIB_DT",
	"LIB_DT_OPTIC",
	"LahtiMG",

	// Pistols
	"LIB_TT33",
	"LIB_FLARE_PISTOL",
	"LIB_M1895",
	"KA_TL_122_flashlight",

	// Flamethrower
	"LIB_M2_Flamethrower",

	// Anti-tank rifles
	"RBC_PTRS",
	"LIB_PTRD_optic",

	// Bazookas
	"LIB_RPzB",
	"LIB_PzFaust_30m"
];

KPLIB_arsenalMagazines = [
	// General ammo
	"LIB_5Rnd_762x54",
	"LIB_10Rnd_762x54",
	"LIB_71Rnd_762x25",
	"LIB_35Rnd_762x25",
	"LIB_47Rnd_762x54",
	"LIB_63Rnd_762x54",
	"LIB_63Rnd_762x54d",
	"LIB_8Rnd_762x25",
	"LIB_7Rnd_762x38",
	"LIB_1Rnd_flare_white",
	"LIB_1Rnd_flare_red",
	"LIB_1Rnd_flare_yellow",
	"IFA3_35Rnd_762x25_PPS",
	"LIB_5Rnd_762x54",
	"LIB_5Rnd_762x54_t46",
	"LIB_5Rnd_762x54_t30",
	"LIB_5Rnd_762x54_D",
	"LIB_5Rnd_762x54_b30",
	"lib_35Rnd_762x25",
	"LIB_71Rnd_762x25",
	"LIB_71Rnd_762x25_t",
	"LIB_71Rnd_762x25_t2",
	"LIB_71Rnd_762x25_ap",
	"lib_35Rnd_762x25_t",
	"lib_35Rnd_762x25_t2",
	"lib_35Rnd_762x25_ap",
	"LIB_1Rnd_145x114",
	"LIB_1Rnd_145x114_T",
	"LIB_10Rnd_762x54",
	"LIB_10Rnd_762x54_t46",
	"LIB_10Rnd_762x54_t30",
	"LIB_10Rnd_762x54_t462",
	"LIB_10Rnd_762x54_t302",
	"LIB_10Rnd_762x54_d",
	"LIB_10Rnd_762x54_b30",
	"LIB_5Rnd_762x54_b30",
	"LIB_5Rnd_762x54",
	"LIB_5Rnd_762x54_t46",
	"LIB_5Rnd_762x54_D",
	"LIB_5Rnd_762x54_t30",
	"LIB_M2_Flamethrower_Mag",
	"IF_20Rnd_762x53_LahtiMG",
	"IF_20Rnd_762x53_LahtiMG_t",
	"IF_71Rnd_762x25_TT",
	"IF_71Rnd_762x25_TT_t",
	"IF_20Rnd_762x17_Suomi",
	"IF_20Rnd_762x17_Suomi_t",
	"IF_70Rnd_762x17_Suomi",
	"IF_70Rnd_762x17_Suomi_t",

	// Throwable
	"LIB_Rpg6",
	"LIB_Rg42",
	"LIB_F1",
	"LIB_RDG",
	"ifa3_TS_Small",
	"ifa3_TS_BIG",

	// Bazooka ammo
	"LIB_1Rnd_RPzB",
	"LIB_1Rnd_PzFaust_30m",

	// Explosives and mines
	"LIB_US_TNT_4pound_mag",
	"LIB_Ladung_Big_MINE_mag",
	"LIB_Ladung_Small_MINE_mag",
	"LIB_PMD6_MINE_mag",
	"LIB_pomzec_MINE_mag",
	"LIB_TMI_42_MINE_mag",
	"LIB_TM44_MINE_mag"
];

KPLIB_arsenalItems = [
	//Weapon accessories
	"LIB_ACC_GL_DYAKONOV_empty",
	"LIB_ACC_M1891_Bayo",
	"BraMit",
	
	// General uniforms
	"H_LIB_NKDV_Efreitor",
	"H_LIB_NKDV_Leutenant",
	"H_LIB_NKDV_StLeutenant",
	"H_LIB_NKDV_Sargeant",
	"H_LIB_SOV_RA_Helmet",
	"U_LIB_SOV_Sergeant",
	"U_LIB_SOV_Strelok_summer",
	"U_LIB_SOV_Razvedchik_am",
	"U_LIB_SOV_Strelok",
	"U_LIB_SOV_Razvedchik_lis",
	"U_LIB_SOV_Sniper",
	"U_LIB_SOV_Stleutenant",
	"U_LIB_SOV_Artleutenant",
	"U_LIB_SOV_Strelokart",
	"U_LIB_SOV_Sergeant_inset_pocket",
	"U_LIB_SOV_Pilot",
	"U_LIB_SOV_Starshina",
	"U_LIB_SOV_Leutenant",
	"U_LIB_SOV_Tank_kapitan",
	"V_LIB_SOV_RA_TankOfficerSet",
	"U_LIB_SOV_Tank_leutenant",
	"U_LIB_SOV_Tank_sergeant",
	"U_LIB_SOV_Tank_private_field",
	"U_LIB_SOV_Tank_ryadovoi",
	"U_LIB_SOV_Razvedchik_mix",
	// [AIF] Uniforms and Gear
	"greatcoat_redarmyman_botinok_field_br",
	"greatcoat_sergeant_botinok_field_br",
	"greatcoat_starshina_botinok_field_br",
	"greatcoat_cap_sapogi_field_br",
	"rkka_stsergeant_35_uniform_hbotinok",
	"rkka_redarmyman_40_uniform_botinok",
	"rkka_sergeant_40_uniform_botinok",
	"rkka_cap_40_uniform_bp_hbotinok",
	"rkka_stsergeant_40_uniform_botinok",
	"rkka_lt_40_uniform_hbotinok",
	"aif_mustache",
	"rkka_medals_02",
	"rkka_medals_04",
	"rkka_medals_01",
	"rkka_medals_06",
	"rkka_medals_07",
	"aif_rkka_sh38",
	"aif_rkka_sh38_rem",
	"aif_rkka_sh38_rem_star",
	"aif_rkka_sh38_rem_ras",
	"aif_rkka_sh38_star",
	"aif_rkka_sh38_schehol_ameba_z1",
	"aif_rkka_sh38_schehol_ameba_z2",
	"aif_rkka_officer_capa",
	"officer_capa_svet",
	"aif_rkka_officer_cap_p",
	"aif_rkka_officer_cap_tanki",

	// Vests
	"V_LIB_SOV_RA_PPShBelt",
	"V_LIB_SOV_RA_MosinBelt",
	"V_LIB_SOV_RAZV_MGBelt_Kit",
	"V_LIB_SOV_RAZV_PPShBelt_Mag",
	"V_LIB_SOV_RA_PPShBelt_Mag",
	"V_LIB_SOV_RA_MGBelt_Kit",
	"V_LIB_SOV_RAZV_PPShBelt",
	"V_LIB_SOV_RAZV_SVTBelt",
	"V_LIB_SOV_RA_SniperVest",
	"V_LIB_SOV_IShBrVestPPShDisc",
	"V_LIB_SOV_IShBrVestPPShMag",
	"V_LIB_SOV_IShBrVestMG",
	"V_LIB_SOV_RA_OfficerVest",
	"V_LIB_SOV_RAZV_OfficerVest",
	"V_LIB_SOV_RA_Belt",
	"V_LIB_SOV_RA_SVTBelt",
	"V_LIB_SOV_RA_MGBelt",
	"V_LIB_SOV_RAZV_MGBelt",

	// Helmets / caps
	"H_LIB_SOV_RA_PrivateCap",
	"H_LIB_SOV_PilotHelmet",
	"H_LIB_SOV_TankHelmet",
	"H_LIB_NKVD_PrivateCap",
	"H_LIB_SOV_RA_Helmet",
	"H_LIB_SOV_RA_OfficerCap",
	"H_LIB_SOV_Ushanka",
	"H_LIB_SOV_Ushanka2",

	// Facewear
	"G_LIB_Dienst_Brille",
	"G_LIB_Dienst_Brille2",
	"G_LIB_Dust_Goggles",
	"G_LIB_Watch2",
	"G_LIB_Watch1",
	"G_LIB_GER_Gloves1",
	"G_LIB_GER_Gloves2",
	"G_LIB_GER_Gloves3",
	"G_LIB_GER_Gloves4",
	"G_LIB_GER_Gloves5",
	"G_LIB_GER_Headset",
	"G_LIB_Headwrap",
	"G_LIB_Headwrap_gloves",
	"G_LIB_Scarf_B",
	"G_LIB_Scarf2_G",
	"G_LIB_Scarf2_B",
	"G_LIB_Scarf2_G",

	// Binoculars
	"LIB_Binocular_SU",

	// Ace items
	"ACE_elasticBandage",
	"ACE_fieldDressing",
	"ACE_quikclot",
	"ACE_bloodIV",
	"ACE_bloodIV_250",
	"ACE_bloodIV_500",
	"ACE_bodyBag",
	"ACE_DefusalKit",
	"ACE_LIB_LadungPM",
	"ACE_EarPlugs",
	"ACE_EntrenchingTool",
	"ACE_epinephrine",
	"ACE_Fortify",
	"ACE_MapTools",
	"ACE_morphine",
	"ACE_packingBandage",
	"ACE_personalAidKit",
	"ACE_salineIV",
	"ACE_salineIV_250",
	"ACE_salineIV_500",
	"ACE_tourniquet",
	"ACE_CableTie",
	"ACE_LIB_FireCord",
	"ACE_LIB_LadungPM",

	// WW2 Phones
	"KIF_RadioNorth",

	// WW2 Radios
	"WW2_Radios_bc611_soviet",

	// Cigarettes (DON'T SMOKE!)
	"cigs_lucky_strike_cigpack",
	"cigs_pops_poppack",
	"cigs_lighter",
	"cigs_eckstein_cigpack",
	"cigs_craven_cigpack",
	"cigs_cigars_cigarbox_5",
	"cigs_black_devil_cigpack",
	"cigs_matches",
	"cigs_morley_cigpack",
	"cigs_baja_blast_cigpack",
	"cigs_crayons_crayonpack",

	"fow_i_whistle",

	// Vanilla items
	"Medikit",
	"FirstAidKit",
	"ToolKit",
	"ItemCompass",
	"ItemWatch",
	"ItemMap"
];

KPLIB_arsenalBackpacks = [
	// General backpacks
	"B_LIB_SOV_RA_Rucksack",
	"B_LIB_SOV_RA_Rucksack_Green",
	"B_LIB_SOV_RA_Rucksack_Gas_Kit",
	"B_LIB_SOV_RA_Rucksack_Gas_Kit_Green",
	"B_LIB_SOV_RA_Rucksack2_Gas_Kit",
	"B_LIB_SOV_RA_Rucksack2_Gas_Kit_Green",
	"B_LIB_SOV_RA_Rucksack2",
	"B_LIB_SOV_RA_Rucksack2_Green",
	"B_LIB_SOV_RA_Rucksack2_Gas_Kit_Shinel",
	"B_LIB_SOV_RA_Rucksack2_Gas_Kit_Shinel_Green",
	"B_LIB_SOV_RA_MGAmmoBag_Empty",
	"B_LIB_SOV_RA_GasBag",
	"B_LIB_SOV_RA_Rucksack2_Gas_Kit_Shinel",
	"B_LIB_SOV_RA_Rucksack2_Gas_Kit_Shinel_Green",
	"B_LIB_US_RocketBag",
	"B_LIB_SOV_RA_Shinel",
	"B_LIB_SOV_RA_MedicalBag_Empty",
	"B_LIB_SOV_RA_Paradrop",
	"B_LIB_SOV_RA_Parachute",
	"B_LIB_SOV_RA_Radio",
	"B_LIB_SOV_RA_Radio_ACRE2",
	"LIB_GER_Panzer_Empty",
	
	//For flamethrower
	"M2_Flammenwerfer_Balloons_Pipe",

	// WW2 Phones
	"FP_UNA_F_31_BP",
	"FP_TK_SU_BP",

	// WW2 Radios (IFA3 & Faces Of War)
	"WW2_Radios_LR_RBM1_opfor"
];