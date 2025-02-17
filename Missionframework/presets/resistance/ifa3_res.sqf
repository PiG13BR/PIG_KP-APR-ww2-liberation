/*
    Needed Mods:
    - None

    Optional Mods:
    - None
*/

/* Classnames of the guerilla faction which is friendly or hostile, depending on the civil reputation
Standard loadout of the units will be replaced with a scripted one, which depends on the guerilla strength, after spawn */
KPLIB_r_units = [
    "LIB_WP_Mgunner",
    "LIB_WP_SierzantF",
    "LIB_WP_Porucznic",
    "LIB_WP_Medic",
    "LIB_WP_Strzelec",
    "LIB_WP_LAT_Strzelec",
    "LIB_WP_Stggunner",
    "LIB_WP_Starszy_strzelec",
    "LIB_WP_Sniper"
];

// Armed vehicles
KPLIB_r_vehicles = [
    "LIB_Kfz1_MG42_sernyt",
    "R71GerPre43"
];

/* Guerilla Equipment
There are 3 tiers for every category. If the strength of the guerillas will increase, they'll have higher tier equipment. */

/* Weapons - You've to add the weapons as array like
["Weaponclassname","Magazineclassname","magazine amount","optic","tripod"]
You can leave optic and tripod empty with "" */
KPLIB_r_weapons_1 = [
    ["LIB_K98","LIB_5Rnd_792x57",6,"",""],
    ["LIB_K98","LIB_5Rnd_792x57",7,"",""],
    ["LIB_M1908","LIB_8Rnd_9x19_P08",4,"",""],
    ["LIB_M1908","LIB_8Rnd_9x19_P08",4,"",""],
    ["LIB_M1908","LIB_8Rnd_9x19_P08",4,"",""],
    ["LIB_MP40","LIB_32Rnd_9x19",6,"",""]
];

KPLIB_r_weapons_2 = [
    ["LIB_K98","LIB_5Rnd_792x57",6,"LIB_ACC_K98_Bayo",""],
    ["LIB_K98","LIB_5Rnd_792x57",6,"LIB_ACC_K98_Bayo",""],
    ["LIB_K98","LIB_5Rnd_792x57",6,"LIB_ACC_K98_Bayo",""],
    ["LIB_M1908","LIB_8Rnd_9x19_P08",4,"",""],
    ["LIB_MP40","LIB_32Rnd_9x19",6,"",""],
    ["LIB_K98ZF39","LIB_5Rnd_792x57",5,"",""]
];

KPLIB_r_weapons_3 = [
    ["LIB_K98","LIB_5Rnd_792x57",6,"LIB_ACC_K98_Bayo",""],
    ["LIB_MP40","LIB_32Rnd_9x19",6,"",""],
    ["LIB_MP44","LIB_30Rnd_792x33",5,"",""],
    ["LIB_G43","LIB_10Rnd_792x57",4,"",""],
    ["LIB_K98ZF39","LIB_5Rnd_792x57",5,"",""],
    ["LIB_MG42","LIB_50Rnd_792x57",4,"",""]
];

// Uniforms
KPLIB_r_uniforms_1 = [
    "U_LIB_CIV_Citizen_1",
    "U_LIB_CIV_Citizen_2",
    "U_LIB_CIV_Citizen_3",
    "U_LIB_CIV_Citizen_4",
    "U_LIB_CIV_Citizen_5",
    "U_LIB_CIV_Citizen_6",
    "U_LIB_CIV_Citizen_7",
    "U_LIB_CIV_Citizen_8"
];

KPLIB_r_uniforms_2 = [
    "U_LIB_CIV_Woodlander_1",
    "U_LIB_CIV_Woodlander_2",
    "U_LIB_CIV_Woodlander_3",
    "U_LIB_CIV_Woodlander_4",
    "U_LIB_CIV_Worker_1",
    "U_LIB_CIV_Worker_2",
    "U_LIB_CIV_Worker_3",
    "U_LIB_CIV_Worker_4"
];

KPLIB_r_uniforms_3 = [
    "U_LIB_WP_Soldier_camo_1",
    "U_LIB_WP_Soldier_camo_2",
    "U_LIB_WP_Soldier_camo_3"
];

// Vests
KPLIB_r_vests_1= [
    ""
];

KPLIB_r_vests_2 = [
    "V_LIB_WP_Kar98Vest",
    "V_LIB_WP_MP40Vest",
    "V_LIB_WP_SniperBela"
];

KPLIB_r_vests_3 = [
    "V_LIB_WP_Kar98Vest",
    "V_LIB_WP_STGVest",
    "V_LIB_WP_MP40Vest",
    "V_LIB_WP_G43Vest",
    "V_LIB_WP_SniperBela"
];

// Headgear
KPLIB_r_headgear_1 = [
    ""
];

KPLIB_r_headgear_2 = [
    "",
    "",
    "",
    "",
    "H_LIB_WP_Cap"
];

KPLIB_r_headgear_3 = [
    "H_LIB_WP_Helmet",
    "H_LIB_GER_HelmetCamo",
    "H_LIB_WP_Cap",
    "H_LIB_WP_Helmet_med"
];

// Facegear. Applies for tier 2 and 3.
KPLIB_r_facegear = [
    ""
];