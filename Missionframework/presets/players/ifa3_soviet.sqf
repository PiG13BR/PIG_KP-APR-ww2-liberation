/*
    File: custom.sqf
    Author: PiG13BR - https://github.com/PiG13BR
    Date: 2024-10-13
    Last Update: 2024-10-13
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Custom (default NATO) player preset.

    Needed Mods:
        - IFA3 AiO
        - IFA3 Liberation modpack (ifa3.ru)

    Optional Mods:
        -
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
KPLIB_b_fobBuilding     = "Fortress2";                                 // This is the main FOB HQ building.
KPLIB_b_fobBox          = "LIB_Zis6_Parm";                             // This is the FOB as a container.
KPLIB_b_fobTruck        = "LIB_Zis6_Parm";                             // This is the FOB as a vehicle.
KPLIB_b_arsenal         = "LIB_AmmoCrates_NoInteractive_Large";        // This is the virtual arsenal as portable supply crates.

// This is the mobile respawn (and medical) truck.
KPLIB_b_mobileRespawn   = ["LIB_Zis5v_Med"];

KPLIB_b_potato01        = "LIB_Scout_M3";                               // This is Potato 01, a multipurpose mobile respawn as a helicopter.
KPLIB_b_crewUnit        = "LIB_SOV_tank_crew";                          // This defines the crew for vehicles.
KPLIB_b_heliPilotUnit   = "LIB_SOV_pilot";                              // This defines the pilot for helicopters.
KPLIB_b_crewStatic      = "";                                           // This defines the crew for static weapons
KPLIB_b_addHeli         = "LIB_Willys_MB";                              // These are the additional helicopters which spawn on the Freedom or at Chimera base.
KPLIB_b_addBoat         = "1715_yawl_base";                             // These are the boats which spawn at the stern of the Freedom.
KPLIB_b_logiTruck       = "LIB_US6_Tent";                               // These are the trucks which are used in the logistic convoy system.
KPLIB_b_smallStorage    = "ContainmentArea_02_sand_F";                  // A small storage area for resources.
KPLIB_b_largeStorage    = "ContainmentArea_01_sand_F";                  // A large storage area for resources.
KPLIB_b_logiStation     = "Land_Ind_Workshop01_04";                     // The building defined to unlock FOB recycling functionality.
KPLIB_b_airControl      = "Land_MobileRadar_01_radar_F";                // The building defined to unlock FOB air vehicle functionality.
KPLIB_b_slotHeli        = "Land_HelipadSquare_F";                       // The helipad used to increase the GLOBAL rotary-wing cap.
KPLIB_b_slotPlane       = "Land_Barrack2";				                // The hangar used to increase the GLOBAL fixed-wing cap. // WW2 logic: "Barracks for more pilots"	
KPLIB_b_crateSupply     = "CargoNet_01_box_F";                          // This defines the supply crates, as in resources.
KPLIB_b_crateAmmo       = "B_CargoNet_01_ammo_F";                       // This defines the ammunition crates.
KPLIB_b_crateFuel       = "CargoNet_01_barrels_F";                      // This defines the fuel crates.

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
KPLIB_b_infantry = [
	["LIB_SOV_unequip",10,0,0],											//Rifleman (Light)
	["LIB_SOV_rifleman",15,0,0],									   	//Rifleman Pvt
    ["LIB_SOV_LC_rifleman",20,0,0],										//Rifleman (Corporal)
    ["LIB_SOV_LAT_Soldier",25,5,0],										//Rifleman (AT)
    ["LIB_SOV_AT_M1A1_soldier",30,5,0],									//Rifleman (AT) 
    ["LIB_SOV_AT_soldier",35,5,0],										//Rifleman (AT)
	["LIB_SOV_AT_grenadier",25,5,0],									//Grenadier
	["LIB_SOV_mgunner",35,5,0],											//Light MachineGunner
	["LIB_SOV_captain",50,0,0],											//Captain
	["LIB_SOV_first_lieutenant",40,10,0],								//Lieutenant
 	["LIB_SOV_sergeant",30,10,0],										//Sergeant  
	["LIB_SOV_medic",35,0,0],											//Combat Life Saver
	["LIB_SOV_engineer",30,0,0],										//Engineer
	["LIB_SOV_smgunner",40,0,0],										//Submachingunner
    ["LIB_SOV_scout_sergeant",40,0,0],									//Scout Sergeant
    ["LIB_SOV_scout_rifleman",30,0,0],									//Scout Rifleman
    ["LIB_SOV_scout_smgunner",45,0,0],									//Scout Submachingunner
    ["LIB_SOV_scout_mgunner",40,5,0],									//Scout MachineGunner
    ["LIB_SOV_scout_atrifle_gunner",50,5,20],							//Scout AT Gunner
    ["LIB_SOV_scout_atrifle_assistant",20,5,0],							//Scout AT Gunner Asst
    ["LIB_SOV_scout_sniper",60,5,0],									//Sniper
    ["LIB_SOV_assault_sergeant",80,5,0],								//Assault Sergeant
    ["LIB_SOV_assault_mgunner",90,5,0],									//Assault MachineGunner
    ["LIB_SOV_assault_smgunner",85,5,0],								//Assault Submachingunner 
    ["LIB_SOV_gun_crew",10,0,0],									    //Gun Crewman
	["LIB_SOV_tank_crew",10,0,0],										//Tank Crewman
	["LIB_SOV_scout_rifleman_autumn",25,0,0],							//Para Trooper
	["LIB_SOV_pilot",10,0,0]											//Pilot
];

// Price relation: Caliber > Armor
KPLIB_b_vehLight = [
    ["BR71RusOlive",50,0,25],                                           // R71 Camo
    ["R71RusGreenCamo",75,0,50],                                        // R71 Camo (Green)
    ["LIB_Willys_MB_Hood",75,40,50],                                    // Wyllis MB (Hood)
    ["LIB_Willys_MB",75,60,50],                                         // Wyllis MB
    ["LIB_Willys_MB_Ambulance",100,0,50],                               // Wyllis MB (Ambulance)
    ["ifa3_gaz55_van",100,40,50],                                       // Gaz55 (Van)
    ["LIB_Zis5v",100,60,50],                                            // Zis5
    ["LIB_US6_Tent",100,0,50],                                          // Studebaker US6
    ["LIB_US6_Open_Cargo",100,40,50],                                   // Studebaker US6 (Open)
    ["ifa3_gazaa_dshk",100,40,50],                                      // Gaz Dshk
    ["ifa3_gazaa_max",100,60,50],                                       // Gaz Maxim
    ["ifa3_gazaa_IZ",100,60,50],                                        // Gaz Armored
    ["ifa3_gazaa_IZ_max",100,0,50],                                     // Gaz Armored Maxim
    ["ifa3_ba64Fmod",100,0,50],                                         // BA64F
    ["ifa3_ba64B",100,0,50],                                            // BA64B (MG)
    ["ifa3_Ba10",120,0,60],                                             // BA-10
    ["LIB_SOV_M3_Halftrack",120,40,60],                                 // M3 Halftrack
    ["LIB_SdKfz251_captured",120,60,60],                                // Sdkfz251 (Captured)
    ["LIB_SdKfz251_captured_FFV",120,60,60]                            // Sdkfz251 (Captured)
];

// Price relation: Armor > Caliber
KPLIB_b_vehHeavy = [
    ["ifa3_xt133",200,40,100],                                          // XT133
    ["ifa3_t26",200,60,100],                                            // T26
    ["SOV_BT_BT7_M1937",200,0,100],                                     // BT7
    ["SOV_BT_BT7A",200,0,125],                                          // BT7A
    ["SOV_BT_BT7TU_M1937",200,75,125],                                  // BT7U
    ["ifa3_OT34_76",200,75,125],                                        // OT-34 (76)
    ["LIB_T34_76",300,100,150],                                         // T-34 (76)
    ["ifa3_pz38t_sov",300,150,150],                                     // Panzer 38t
    ["ifa3_t60",300,200,150],                                           // T60
    ["ifa3_t70m",300,225,150],                                          // T70m
    ["ifa3_pz3L_sov",300,250,175],                                      // Panzer 3L (Captured)
    ["ifa3_M4A2_SOV",300,250,175],                                      // Sherman M4A2 (Imported)
    ["ifa3_kv1a",300,250,175],                                          // KV1a
    ["ifa3_kv1e",300,250,175],                                          // KV1e
    ["lib_zis5v_61K",300,250,175],                                      // ZIS-5V (61-K)
    ["LIB_T34_85",300,250,175],                                         // T-34/85
    ["LIB_SU85",300,250,175],                                           // SU-85
    ["ifa3_kv2",300,250,175],                                           // KV-2
    ["LIB_JS2_43",300,250,175],                                         // JS-122
    ["LIB_US6_BM13",300,250,175]                                        // BM13 'Katyusha'
];

KPLIB_b_vehAir = [
    ["LIB_P39",75,0,25],                                                // P-39 Airacobra
    ["LIB_RA_P39_2",80,0,30],                                           // P-39Q
    ["LIB_RA_P39_3",80,0,30],                                           // P-39L
    ["LIB_La7",200,100,100],                                            // La-7
    ["ifa3_La7_2x50",200,0,100],                                        // La-7 (2xFAB50)
    ["LIB_Pe2",200,0,100],                                              // Pe-2 (Bomber)
    ["LIB_Li2",200,200,100]                                             // Li-2 (Transport)
];

KPLIB_b_vehStatic = [
    ["LIB_Maxim_M30_base",25,40,0],                                     // Maxim
    ["LIB_Maxim_M30_Trench",25,40,0],                                   // Maxim (trench)
    ["IFA3_DSHkM_Mini_TriPod",35,40,0],                                 // DSHkM
    ["Ifa3_p27",35,60,0],                                               // P-27
    ["IFA3_53K",35,60,0],                                               // 45 mm AT Gun
    ["LIB_Zis3",45,60,0],                                               // 76 mm ZIS-3
    ["LIB_61k",50,100,0],                                               // 61-K (AA)
    ["LIB_BM37",50,100,0],                                              // BM-37 (Mortar)
    ["ifa3_m30_arty",200,100,0]                                          // M-30 (Arty)
];

KPLIB_b_objectsDeco = [
    ["LIB_SU_SearchLight",10,0,0],                                       // Search Light
    ["Land_Campfire",0,0,0],
    ["LIB_FlagCarrier_SU",0,0,0],
    ["geist_Flag_URSS01_F",0,0,0],
    ["geist_Flag_URSS02_F",0,0,0],
    ["Land_fort_rampart",0,0,0],
    ["Land_fort_artillery_nest",0,0,0],
    ["Land_WW2_Posed",0,0,0],
    ["Land_Setka_Car",0,0,0],
    ["Land_WW2_Setka_Tank",0,0,0],
    ["Land_WW2_Setka_Vert",0,0,0],
    ["Land_WW2_Setka_Dor",0,0,0],
    ["Flag_RedCrystal_F",0,0,0],
    ["Land_CamoNet_EAST",0,0,0],
    ["Land_CamoNetB_EAST",0,0,0],
    ["Land_CamoNetVar_EAST",0,0,0],
    ["Land_SandbagBarricade_01_half_F",0,0,0],
    ["Land_SandbagBarricade_01_F",0,0,0],
    ["Land_fort_bagfence_long",0,0,0],
    ["Land_fort_bagfence_corner",0,0,0],
    ["Land_fort_bagfence_round",0,0,0],
    ["Land_BagFenceShort",0,0,0],
    ["Land_BagFenceLong",0,0,0],                                     
    ["Land_BagFenceRound",0,0,0], 
    ["Land_BagFenceEnd",0,0,0],
    ["Land_BagFence_Corner_F",0,0,0],
    ["Land_BagFence_End_F",0,0,0],
    ["Land_BagFence_Long_F",0,0,0],
    ["Land_BagFence_Short_F",0,0,0],
    ["Land_BagFence_Round_F",0,0,0],
    ["Land_Fort_Bagfence_Bunker",0,0,0],
    ["Hhedgehog_concrete",0,0,0],
    ["Land_WW2_SWU_Sandbag_Wall_1",0,0,0],
    ["Wire",0,0,0],
    ["Fort_RazorWire",0,0,0],
    ["Land_I44_Buildings_Barbedwire2",0,0,0],
    ["Land_jezekbeton",0,0,0],
    ["Hedgehog",0,0,0],
    ["Land_GuardShed",0,0,0],
    ["Land_Plank_01_8m_F",0,0,0],
    ["Land_Plank_01_4m_F",0,0,0],
    ["Pile_of_wood",0,0,0],
    ["Land_TimberPile_02_F",0,0,0],
    ["Land_TimberPile_03_F",0,0,0],
    ["Land_TimberPile_04_F",0,0,0],
    ["Land_TimberPile_05_F",0,0,0],
    ["Land_TimberLog_05_F",0,0,0],
    ["Loudspeakers_EP1",0,0,0],
    ["Land_WW2_Barrier_P1",0,0,0],
    ["Land_WW2_Trench_MG_Low_w",0,0,0],
    ["Land_WW2_Small_Infantry_Trench1_w",0,0,0],
    ["Land_WW2_Trench_Mortar_w",0,0,0],
    ["Land_WW2_TrenchMG_w",0,0,0],
    ["Land_WW2_Trench76_w",0,0,0],
    ["Land_WW2_TrenchTank_w",0,0,0],
    ["Land_WW2_SWU_Trench_Wood_Support",0,0,0],
    ["Land_WoodenCrate_01_F",0,0,0],
    ["Land_WoodenCrate_01_stack_x3_F",0,0,0],
    ["Land_WoodenCrate_01_stack_x5_F",0,0,0],
    ["Land_WW2_Rus_Plash_Palatka",0,0,0],
    ["Land_DirtPatch_05_F",0,0,0],
    ["Land_ClutterCutter_large_F",0,0,0]
];

KPLIB_b_vehSupport = [
    [KPLIB_b_arsenal,100,200,0],
    [(KPLIB_b_mobileRespawn select 0),200,0,100],
    [KPLIB_b_fobBox,300,500,0],
    [KPLIB_b_fobTruck,300,500,75],
    [KPLIB_b_smallStorage,0,0,0],
    [KPLIB_b_largeStorage,0,0,0],
    [KPLIB_b_logiStation,250,0,0],
    [KPLIB_b_airControl,1000,0,0],
    [KPLIB_b_addHeli,250,0,0],
    [KPLIB_b_slotPlane,500,0,0],
    ["ACE_medicalSupplyCrate_advanced",50,0,0],
    ["ACE_Box_82mm_Mo_HE",50,40,0],
    ["ACE_Box_82mm_Mo_Smoke",50,10,0],
    ["ACE_Box_82mm_Mo_Illum",50,10,0],
    ["ACE_Wheel",10,0,0],
    ["ACE_Track",10,0,0],
    ["ifa3_gazaa_eng",325,0,75],                                          // GAZ AA (Repair)
    ["LIB_Zis5v_Fuel",125,0,275],                                         // Zis-5V (Fuel)
    ["LIB_US6_Ammo",125,200,75],                                          // Studebaker US6 (Ammo)
    ["LIB_Willys_MB_Ambulance",125,200,75],                               // Willys MB (Ambulance)
    ["ifa3_gaz55",125,200,75]                                             // Gaz 55 (Ambulance)
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
KPLIB_b_squadLight = [
    "LIB_SOV_sergeant",
    "LIB_SOV_LC_rifleman",
    "LIB_SOV_mgunner",
    "LIB_SOV_rifleman",
    "LIB_SOV_unequip",
    "LIB_SOV_unequip",
    "LIB_SOV_unequip",
    "LIB_SOV_unequip",
    "LIB_SOV_unequip",
    "LIB_SOV_unequip"
];

// Heavy infantry squad. (Soviet Squad Tactics in World War 2 https://www.youtube.com/watch?v=hfZXlpJkDJg)
KPLIB_b_squadInf = [
    "LIB_SOV_gun_lieutenant",
    "LIB_SOV_sergeant",
    "LIB_SOV_mgunner",
    "LIB_SOV_rifleman",
    "LIB_SOV_LC_rifleman",
    "LIB_SOV_LC_rifleman",
    "LIB_SOV_LC_rifleman",
    "LIB_SOV_LC_rifleman",
    "LIB_SOV_medic"
];

// AT specialists squad.
KPLIB_b_squadAT = [
    "LIB_SOV_sergeant",
    "LIB_SOV_LC_rifleman",
    "LIB_SOV_grenadier",
    "LIB_SOV_AT_soldier",
    "LIB_SOV_LAT_Soldier",
    "LIB_SOV_LAT_Soldier",
    "LIB_SOV_medic"
];

// Assault specialists squad.
KPLIB_b_squadAssault = [
    "LIB_SOV_assault_sergeant",
    "LIB_SOV_assault_smgunner",
    "LIB_SOV_assault_mgunner",
    "LIB_SOV_assault_smgunner",
    "LIB_SOV_assault_mgunner",
    "LIB_SOV_assault_smgunner",
    "LIB_SOV_assault_smgunner",
    "LIB_SOV_assault_smgunner"
];

// Force recon squad.
KPLIB_b_squadRecon = [
    "LIB_SOV_scout_lieutenant",
    "LIB_SOV_scout_p_officer",
    "LIB_SOV_scout_mgunner",
    "LIB_SOV_scout_rifleman",
    "LIB_SOV_scout_rifleman",
    "LIB_SOV_medic",
    "LIB_SOV_scout_atrifle_gunner",
    "LIB_SOV_scout_atrifle_assistant",
    "LIB_SOV_scout_sniper",
    "LIB_SOV_scout_sniper"
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
KPLIB_b_squadPara = [
    "LIB_SOV_scout_rifleman_autumn",
    "LIB_SOV_scout_rifleman_autumn",
    "LIB_SOV_scout_rifleman_autumn",
    "LIB_SOV_scout_rifleman_autumn",
    "LIB_SOV_scout_rifleman_autumn",
    "LIB_SOV_scout_rifleman_autumn",
    "LIB_SOV_scout_rifleman_autumn",
    "LIB_SOV_scout_rifleman_autumn",
    "LIB_SOV_scout_rifleman_autumn",
    "LIB_SOV_scout_rifleman_autumn"
];

/*
    --- Elite vehicles ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
KPLIB_b_vehToUnlock = [
    "lib_zis5v_61K",                                                    // ZIS-5V (61-K)
    "LIB_T34_85",                                                       // T-34/85
    "LIB_SU85",                                                         // SU-85
    "ifa3_kv1a",                                                        // KV1a
    "ifa3_kv1e",                                                        // KV1e
    "ifa3_kv2",                                                         // KV-2
    "LIB_JS2_43",                                                       // JS-122
    "LIB_US6_BM13"                                                     // BM13 'Katyusha'
];
