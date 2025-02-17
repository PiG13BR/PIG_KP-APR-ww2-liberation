/*
    File: ifa3_ger.sqf
    Author: PiG13BR - https://github.com/PiG13BR
    Date: 2024-11-13
    Last Update: 2024-12-16
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        IFA3 enemy (german) preset

    Needed Mods:
        - IFA3 AiO
		- IFA3 Liberation modpack (ifa3.ru)

    Optional Mods:
        - Faces of War
*/

// Enemy infantry classes
KPLIB_o_officer = "LIB_GER_hauptmann";								    //Officer (Captain)
KPLIB_o_squadLeader = "LIB_GER_ober_lieutenant";					    //Squad Leader (Lieutenant)
KPLIB_o_teamLeader = "LIB_GER_unterofficer";						    //Team Leader (Sargeant)
KPLIB_o_sentry = "LIB_GER_unequip";						                //Rifleman (Lite)
KPLIB_o_rifleman = "LIB_GER_rifleman";							        //Rifleman
KPLIB_o_riflemanLAT = "LIB_GER_LAT_Rifleman";							//Rifleman (LAT)
KPLIB_o_grenadier = "LIB_GER_ober_grenadier";				            //Grenadier
KPLIB_o_machinegunner = "LIB_GER_stggunner";				            //Autorifleman
KPLIB_o_heavyGunner = "LIB_GER_mgunner";				                //Heavy Gunner
KPLIB_o_marksman = "LIB_GER_rifleman";									//Marksman
KPLIB_o_sharpshooter = "LIB_GER_rifleman";			            		//Sharpshooter
KPLIB_o_sniper = "LIB_GER_scout_sniper";								//Sniper
KPLIB_o_atSpecialist = "LIB_GER_AT_soldier";							//AT Specialist
KPLIB_o_aaSpecialist = "LIB_GER_ober_rifleman";							//AA Specialist
KPLIB_o_medic = "LIB_GER_medic";									    //Combat Life Saver
KPLIB_o_engineer = "LIB_GER_sapper";					    			//Engineer
KPLIB_o_paratrooper = "LIB_FSJ_Soldier";					            //Paratrooper
KPLIB_o_crewman	= "SG_sturmpanzer_crew";								// Crewman
KPLIB_o_pilot = "LIB_GER_pilot";										// Pilot


// Enemy vehicles used by secondary objectives.
KPLIB_o_mrap = "ifa3_gaz55_ger";						                //GAZ 55 (Ger)
KPLIB_o_mrapArmed= "LIB_SdKfz222";				                        //Sd.fkz. 222
KPLIB_o_transportHeli = "LIB_OpelBlitz_Tent_Y_Camo";					//Opel Blitz (Tent)
KPLIB_o_transportTruck = "LIB_OpelBlitz_Tent_Y_Camo";					//Opel Blitz (Tent)
KPLIB_o_transportTruckAmmo = "LIB_OpelBlitz_Open_Y_Camo";				//Opel Blitz (Open) -> Has to be able to transport resource crates!
KPLIB_o_fuelTruck = "LIB_OpelBlitz_Fuel";								//Opel Blitz (Fuel)
KPLIB_o_ammoTruck = "LIB_OpelBlitz_Ammo";								//Opel Blitz (Ammo)
KPLIB_o_fuelContainer = "LIB_OpelBlitz_Fuel";				            //Opel Blitz (Fuel)
KPLIB_o_ammoContainer = "LIB_OpelBlitz_Ammo";				            //Opel Blitz (Ammo)
KPLIB_o_flag = "LIB_FlagCarrier_GER";									//Ger Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
KPLIB_o_militiaInfantry = [
	"LIB_GER_smgunner",										            //SMG
	"LIB_GER_mgunner",									                //Autorifleman
	"LIB_GER_unequip",									            	//Rifleman 
	"LIB_GER_LAT_Rifleman",									            //Rifleman (LAT)
	"LIB_GER_LAT_Rifleman",									            //Rifleman (LAT)
	"LIB_GER_unequip",									            	//Rifleman
	"LIB_GER_unequip",									            	//Rifleman
	"LIB_GER_unequip",									            	//Rifleman
	"LIB_GER_rifleman",										            //Rifleman
	"LIB_GER_rifleman"									                //Rifleman
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders.
KPLIB_o_militiaVehicles = [
	"LIB_Kfz1_MG42_sernyt",							                    //Kubelwagen MG-42
	"LIB_Kfz1_MG42",													//Kubelwagen MG-42
	"LIB_Kfz1_MG42_camo",												//Kubelwagen MG-42
	"fow_v_sdkfz_222_foliage_ger_heer",
	"LIB_SdKfz222",								                        //Sd.kfz. 222
	"ifa3_Ba10_wm",						                                //BA-10 (Captured)
	"ifa3_pz38t",														//Panzer 38 t
	"R71GerPre43"														//R71
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
KPLIB_o_armyVehicles = [
	"fow_v_sdkfz_222_foliage_ger_heer",
	"LIB_SdKfz234_1",						                            //Sd.kfz. 234 (Autocannon)
	"LIB_SdKfz234_2",						                            //Sd.kfz. 234 'Puma'
	"LIB_SdKfz234_2",						                            //Sd.kfz. 234 'Puma'
	"LIB_SdKfz234_3",						                            //Sd.kfz. 234 'Stummel'
	"LIB_SdKfz234_4",						                            //Sd.kfz. 234 'Pakwagen'
	"pz2f",								                                //Panzer II
	"LIB_SdKfz_7_AA",											        //Sd.kfz. 7 (AA)
	"LIB_FlakPanzerIV_Wirbelwind",						                //Wirbelwind (AA)
	"ifa3_pz3M",						                				//Panzer III M
	"ifa3_pz3N",														//Panzer III J
	"LIB_PzKpfwIV_H_tarn51c",						                	//Panzer IV C
	"LIB_PzKpfwIV_H_tarn51d",						                	//Panzer IV D
	"LIB_T34_76_captured",												//T34/76 (774)
	"LIB_PzKpfwV",														//Panther
	"fow_v_panther_camo_foliage_ger_heer",
	"LIB_StuG_III_G",													//Stug III G
	"LIB_StuG_III_G",													//Stug III G
	"LIB_PzKpfwVI_E_tarn51c",											//Tiger I E
	"LIB_PzKpfwVI_E_1",
	"LIB_PzKpfwVI_B_tarn51c",											//Kingtiger B
	"ifa3_StuH_42"											    		//Stug 42
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
KPLIB_o_armyVehiclesLight = [
	"fow_v_sdkfz_222_foliage_ger_heer",
	"LIB_SdKfz222",								                        //Sd.kfz. 222
	"ifa3_Ba10_wm",						                                //BA-10 (Captured)
	"ifa3_jp38C",														//Jadgpanzer 38(t)
	"pz2f",								                                //Panzer II
	"pz2f",								                                //Panzer II
	"ifa3_pz3f",						                                //Panzer III F
	"ifa3_pz3J",														//Panzer III J
	"LIB_SdKfz251",							                            //Sd.kfz. 251
	"LIB_SdKfz251",							                            //Sd.kfz. 251
	"LIB_SdKfz251_FFV",													//Sd.kfz. 251 (2xMG)
	"ifa3_pz38t",														//Panzer 38 t
	"LIB_FlakPanzerIV_Wirbelwind",										//Wirbelwind (AA)
	"LIB_SdKfz_7_AA",											        //Sd.kzfz. 7 (AA)
	"LIB_SdKfz_7_AA"											        //Sd.kzfz. 7 (AA)
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehicles = [
	"fow_v_sdkfz_250_camo_foliage_ger_heer",
	"fow_v_sdkfz_250_camo_ger_heer",
	"fow_v_sdkfz_251_camo_foliage_ger_heer",
	"LIB_SdKfz251",							                            //Sd.kfz. 251
	"LIB_SdKfz222",							                            //Sd.kfz. 222
	"LIB_SdKfz222",								                        //Sd.kfz. 222
	"LIB_SdKfz222",								                        //Sd.kfz. 222
	"ifa3_Ba10_wm",						                                //BA-10 (Captured)
	"LIB_SdKfz234_1",						                            //Sd.kfz. 234 (Autocannon)
	"LIB_SdKfz234_1",						                            //Sd.kfz. 234 (Autocannon)
	"pz2f",								                                //Panzer II
	"pz2f",								                                //Panzer II
	"LIB_OpelBlitz_Open_Y_Camo",										//Opel Blitz (Open)
	"LIB_OpelBlitz_Tent_Y_Camo",										//Opel Blitz (Tent)
	"LIB_FlakPanzerIV_Wirbelwind",						                //Wirbelwind (AA)
	"LIB_FlakPanzerIV_Wirbelwind",						                //Wirbelwind (AA)
	"LIB_SdKfz_7_AA",											        //Sd.kzfz. 7 (AA)
	"ifa3_pz3N",														//Panzer III J
	"ifa3_pz3N",														//Panzer III J
	"LIB_PzKpfwIV_H_tarn51c",						                	//Panzer IV C
	"LIB_PzKpfwIV_H_tarn51c",						                	//Panzer IV C
	"ifa3_StuG_III_G",													//Stug III G
	"ifa3_StuG_III_G",													//Stug III G
	"LIB_PzKpfwVI_E",													//Tiger I E
	"LIB_PzKpfwVI_B_tarn51d",											//Kingtiger B
	"ifa3_ju87_mg",												    	//Ju-87 (Stuka)
	"LIB_Ju52"															//Ju-52/3m
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehiclesLight = [
	"LIB_Kfz1_MG42_camo", 												//Kubewagen (MG42)
	"LIB_Kfz1_MG42_camo", 												//Kubewagen (MG42)
	"LIB_SdKfz251",							                            //Sd.kfz. 251
	"LIB_SdKfz251",							                            //Sd.kfz. 251
	"LIB_SdKfz251_FFV",													//Sd.kfz. 251 (2xMG)
	"LIB_SdKfz222",							                            //Sd.kfz. 222
	"LIB_OpelBlitz_Open_Y_Camo",										//Opel Blitz (Open)
	"LIB_OpelBlitz_Open_Y_Camo",										//Opel Blitz (Open)
	"LIB_OpelBlitz_Tent_Y_Camo",										//Opel Blitz (Tent)
	"LIB_OpelBlitz_Tent_Y_Camo",										//Opel Blitz (Tent)
	"LIB_SdKfz_7_AA"											        //Sd.kzfz. 7 (AA)
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.	*/
KPLIB_o_troopTransports = [
	"LIB_SdKfz251",							                            //Sd.kfz. 251
	"LIB_SdKfz251",							                            //Sd.kfz. 251
	"LIB_SdKfz251_FFV",													//Sd.kfz. 251 (2xMG)
	"LIB_Ju52"															//Ju-52/3m
];

// Enemy rotary-wings that will need to spawn in flight.
KPLIB_o_helicopters = [
	"LIB_FW190F8",									                //Fw 190 F-8
	"LIB_FW190F8_2"									                //Fw 190 F-8
];

// Enemy fixed-wings that will need to spawn in the air.
KPLIB_o_planes = [
	"LIB_FW190F8_3",									            //Fw 190 F-8
	"LIB_FW190F8_4",									            //Fw 190 F-8
	"LIB_FW190F8_5",									            //Fw 190 F-8
	"LIB_Ju87",												        //Ju-87 (Stuka)
	"LIB_Ju87",												        //Ju-87 (Stuka)
	"ifa3_ju87_mg",												    //Ju-87 (Stuka)
	"ifa3_ju87_mg"											    	//Ju-87 (Stuka)
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_statics_raisedHMG = [
    "LIB_MG34_Lafette_Deployed"
];

// Static HMG (Only lowered)
KPLIB_o_statics_loweredHMG = [
    "LIB_MG34_Lafette_low_Deployed",
	"fow_w_mg42_deployed_s_ger_heer"
];

// Static HMG (Only raised)
KPLIB_o_statics_raisedGMG = [
    "LIB_MG42_Lafette_Deployed"
];

// Static HMG (Only lowered)
KPLIB_o_statics_loweredGMG = [
    "LIB_MG42_Lafette_low_Deployed",
	"fow_w_mg42_deployed_s_ger_heer"
];

// Static AT 
KPLIB_o_statics_AT = [
    "IFA3_Pak38",
	"LIB_Pak40",
	"fow_w_pak40_camo_foliage_ger_heer"
];

// Static Only 88s (Flak 36)
KPLIB_o_statics_88 = [
	"LIB_FlaK_36",
	"fow_w_flak36_camo_ger_heer",
	"fow_w_flak36_gray_ger_heer"
];

// Static AA
KPLIB_o_statics_AA = [
    "LIB_FlaK_38",
	"LIB_Flakvierling_38"
];

// Enemy SAM turrets that will be spawned in the back country
KPLIB_o_turrets_SAM = [
    ["LIB_Flakvierling_38", "LIB_FlaK_30", "LIB_FlaK_30"], 
    ["LIB_FlaK_36_AA", "LIB_FlaK_36_AA", "LIB_FlaK_36_AA"]
];

// Units for fixed positions (only infantry)
KPLIB_o_fixedUnits = [
	KPLIB_o_heavyGunner,
	KPLIB_o_rifleman,
	KPLIB_o_rifleman,
	KPLIB_o_rifleman,
	KPLIB_o_riflemanLAT,
	KPLIB_o_atSpecialist,
	KPLIB_o_teamLeader,
	KPLIB_o_sniper,
	KPLIB_o_medic
];

// Vehicles for fixed positions (only vehicles)
KPLIB_o_fixedVehicles = [
	"ifa3_pz3M",
	"LIB_PzKpfwIV_H_tarn51c",
	"LIB_PzKpfwIV_H_tarn51c",
	"LIB_PzKpfwIV_H_tarn51c",
	"LIB_PzKpfwV",
	"fow_v_panther_camo_foliage_ger_heer",
	"LIB_PzKpfwVI_E",
	"LIB_PzKpfwVI_E",
	"LIB_PzKpfwVI_B_tarn51c"
];

// Enemy artilley units
KPLIB_o_artilleryLight = [
    [
        "LIB_GrWr34_g",                                                 //Mk6 mortar
        // Available ammunition for this Artillery (use the export_artyPreset.sqf file to get the classnames in order)
        // Default ammunition is mandatory
        [

            "LIB_8Rnd_81mmHE_GRWR34",                                       // Default Ammunition - Generally HE
            "",                                  // Smoke
            "",                                  // Flare
            "",                                                          // Cluster
            ""                                                           // Laser Guided
        ]
    ]                                                     
];

KPLIB_o_artilleryHeavy = [
    [
        // Artillery
        "LIB_FlaK_36_ARTY",                                                //2S9 Sochor
        // Available ammunition for this Artillery (use the export_artyPreset.sqf file to get the classnames in order)
        // Default ammunition is mandatory
        [

            "LIB_45x_SprGr_KwK36_HE",                                     // Default Ammunition - Generally HE
            "",                                       // Smoke
            "",                                                            // Flare
            "",                                     // Cluster
            ""                                           // LG
        ]
    ],
	[
        // Artillery
        "LIB_leFH18",                                                //2S9 Sochor
        // Available ammunition for this Artillery (use the export_artyPreset.sqf file to get the classnames in order)
        // Default ammunition is mandatory
        [

            "LIB_20x_Shell_105L28_Gr39HlC_HE",                                     // Default Ammunition - Generally HE
            "",                                       // Smoke
            "",                                                            // Flare
            "",                                     // Cluster
            ""                                           // LG
        ]
    ],
	[
        // Artillery
        "LIB_Nebelwerfer41",                                                //2S9 Sochor
        // Available ammunition for this Artillery (use the export_artyPreset.sqf file to get the classnames in order)
        // Default ammunition is mandatory
        [

            "LIB_6Rnd_NbW41",                                     // Default Ammunition - Generally HE
            "",                                       // Smoke
            "",                                                            // Flare
            "",                                     // Cluster
            ""                                           // LG
        ]
    ],
	[
        // Artillery
        "LIB_SdKfz124",                                                //2S9 Sochor
        // Available ammunition for this Artillery (use the export_artyPreset.sqf file to get the classnames in order)
        // Default ammunition is mandatory
        [

            "LIB_20x_Shell_105L28_Gr39HlC_HE",                                     // Default Ammunition - Generally HE
            "",                                       // Smoke
            "",                                                            // Flare
            "",                                     // Cluster
            ""                                           // LG
        ]
    ]
];