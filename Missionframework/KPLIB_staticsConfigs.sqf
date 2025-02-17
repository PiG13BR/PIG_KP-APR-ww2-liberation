/*
    - Place here the structures that you want the enemy static weapons to spawn. For that, you need:
        The classname of the building [STRING], followed by an bigger array;
        The type of the static weapon ("RAISED-HMG", "LOWERED-HMG", "RAISED-GMG", "LOWERED-GMG", "AT", "AA") [ARRAY], related to ones in the presets. Can be more than one. Recommended: one type per position;
        The PositionRelative coordinates [ARRAY] where the static weapon will spawn, relative to the structure;
        The direction of the weapon [NUMBER] (it will be relative to the object).
    - Example:
        - [STRING, [[[STRING], ARRAY, NUMBER]]]
        - ["building_classname", [[["type"], [relative position], relative direction], [["RAISED-HMG", "AT", "AA"], [x,y,z], (+/- dir)], [["RAISED-HMG"], [-1.14307,-1.2998,-0.55952], (180)]]]
    - To get positionRelative, stand your character where you want to static weapon to spawn and run the code below in debug, it will return a [x,y,z] array. 
        (varNameOfTheObject or cursorObject) worldToModel ASLToAGL getPosASL player
    - Using modded static weapons may require small adjustments in relative positions.
    - To open the possibility of spawning static weapons, it requires more editing by placing those buildings classnames referenced below in the map. Some building classes may be already in the map.
    - The static weapons will only spawn near sectors, so place the garrisons buildings near them.
    - Don't duplicate classnames.
    - Be careful when making a new array. Copy an example and change the values, and then check for missing or additional commas.
*/

KPLIB_staticsConfigs = [
// Vanilla
    ["Land_Cargo_Patrol_V1_F", [[["RAISED-HMG"], [-1.14307,-1.2998,-0.55952], (180)]]],
    ["Land_Cargo_Patrol_V2_F", [[["RAISED-HMG"], [-1,-1.3,-0.5], (180)]]],
    ["Land_Cargo_Patrol_V3_F", [[["RAISED-HMG"], [-1,-1.3,-0.5], (180)]]], 
    ["Land_Cargo_HQ_V1_F", [[["AA"], [1.54492,0.740723,-0.747444], (0)], [["RAISED-HMG"], [-1.57813,-4.04639,-0.747444], (180)], [["RAISED-HMG"], [-2.64551,3.2,-0.747444], (- 45)], [["RAISED-HMG"], [5.88232,1.84473,-0.747444], (- 45)]]],
    ["Land_Cargo_HQ_V2_F", [[["AA"], [1.54492,0.740723,-0.747444], (0)], [["RAISED-HMG"], [-1.57813,-4.04639,-0.747444], (180)], [["RAISED-HMG"], [-2.64551,3.2,-0.747444], (- 45)], [["RAISED-HMG"], [5.88232,1.84473,-0.747444], (- 45)]]],
    ["Land_Cargo_HQ_V3_F", [[["AA"], [1.54492,0.740723,-0.747444], (0)], [["RAISED-HMG"], [-1.57813,-4.04639,-0.747444], (180)], [["RAISED-HMG"], [-2.64551,3.2,-0.747444], (- 45)], [["RAISED-HMG"], [5.88232,1.84473,-0.747444], (- 45)]]],
    ["Land_Cargo_Tower_V1_F", [[["RAISED-HMG"], [4.61279,3.98389,5.00471], (45)], [["RAISED-HMG"], [4.8584,-2.90234,5.00471], (140)], [["RAISED-HMG"], [-4.18359,-3.16211,5.00471], (- 90)], [["RAISED-HMG"], [-3.07178,4.40283,5.00471], (0)]]],
    ["Land_Cargo_Tower_V2_F", [[["RAISED-HMG"], [4.61279,3.98389,5.00471], (45)], [["RAISED-HMG"], [4.8584,-2.90234,5.00471], (140)], [["RAISED-HMG"], [-4.18359,-3.16211,5.00471], (- 90)], [["RAISED-HMG"], [-3.07178,4.40283,5.00471], (0)]]],
    ["Land_Cargo_Tower_V3_F", [[["RAISED-HMG"], [4.61279,3.98389,5.00471], (45)], [["RAISED-HMG"], [4.8584,-2.90234,5.00471], (140)], [["RAISED-HMG"], [-4.18359,-3.16211,5.00471], (- 90)], [["RAISED-HMG"], [-3.07178,4.40283,5.00471], (0)]]],
    ["Land_Cargo_Tower_V1_No1_F", [[["RAISED-HMG"], [4.61279,3.98389,5.00471], (45)], [["RAISED-HMG"], [4.8584,-2.90234,5.00471], (140)], [["RAISED-HMG"], [-4.18359,-3.16211,5.00471], (- 90)], [["RAISED-HMG"], [-3.07178,4.40283,5.00471], (0)]]],
    ["Land_Cargo_Tower_V1_No2_F", [[["RAISED-HMG"], [4.61279,3.98389,5.00471], (45)], [["RAISED-HMG"], [4.8584,-2.90234,5.00471], (140)], [["RAISED-HMG"], [-4.18359,-3.16211,5.00471], (- 90)], [["RAISED-HMG"], [-3.07178,4.40283,5.00471], (0)]]],
    ["Land_Cargo_Tower_V1_No3_F", [[["RAISED-HMG"], [4.61279,3.98389,5.00471], (45)], [["RAISED-HMG"], [4.8584,-2.90234,5.00471], (140)], [["RAISED-HMG"], [-4.18359,-3.16211,5.00471], (- 90)], [["RAISED-HMG"], [-3.07178,4.40283,5.00471], (0)]]],
    ["Land_Cargo_Tower_V1_No4_F", [[["RAISED-HMG"], [4.61279,3.98389,5.00471], (45)], [["RAISED-HMG"], [4.8584,-2.90234,5.00471], (140)], [["RAISED-HMG"], [-4.18359,-3.16211,5.00471], (- 90)], [["RAISED-HMG"], [-3.07178,4.40283,5.00471], (0)]]],
    ["Land_Cargo_Tower_V1_No5_F", [[["RAISED-HMG"], [4.61279,3.98389,5.00471], (45)], [["RAISED-HMG"], [4.8584,-2.90234,5.00471], (140)], [["RAISED-HMG"], [-4.18359,-3.16211,5.00471], (- 90)], [["RAISED-HMG"], [-3.07178,4.40283,5.00471], (0)]]],
    ["Land_Cargo_Tower_V1_No6_F", [[["RAISED-HMG"], [4.61279,3.98389,5.00471], (45)], [["RAISED-HMG"], [4.8584,-2.90234,5.00471], (140)], [["RAISED-HMG"], [-4.18359,-3.16211,5.00471], (- 90)], [["RAISED-HMG"], [-3.07178,4.40283,5.00471], (0)]]],
    ["Land_Cargo_Tower_V1_No7_F", [[["RAISED-HMG"], [4.61279,3.98389,5.00471], (45)], [["RAISED-HMG"], [4.8584,-2.90234,5.00471], (140)], [["RAISED-HMG"], [-4.18359,-3.16211,5.00471], (- 90)], [["RAISED-HMG"], [-3.07178,4.40283,5.00471], (0)]]],
    ["Land_BagFence_Round_F", [[["AT"], [0,1.5,0], (180)]]],
    ["Land_BagFence_Long_F", [[["AA"], [0,1.5,0], (180)]]],
    ["Land_HBarrierTower_F", [[["RAISED-HMG"], [0,-1.2793,0.0967188], (180)]]],
    ["Land_BagBunker_Small_F", [[["RAISED-HMG"], [0,0,-0.9], (180)]]],
    ["Land_BagBunker_Large_F", [[["RAISED-HMG"], [0.0717773,-3.24316,-0.709913], (180)], [["RAISED-HMG"], [2.7627,-1.0293,-0.709913], (90)]]],
    ["Land_BagBunker_Tower_F", [[["AA", "AT"], [0.163086,1.16992,0.571415], (0)], [["RAISED-HMG", "RAISED-GMG"], [-0.599121,-1.44092,0.571415], (180)]]],
    ["Land_ClutterCutter_medium_F", [[["LOWERED-HMG", "LOWERED-GMG"], [0,0,0], (0)]]],
    ["Land_ClutterCutter_large_F", [[["FLAK36"], [0,0,0], (0)]]], // WW2 ONLY
    // CUP
    ["Land_fort_artillery_nest", [[["AA"], [0,-2,0], (0)]]],
    // IFA3
    ["Land_WW2_Bunker_H679", [[["RAISED-HMG", "RAISED-GMG"], [-1,0,0.5], (- 90)]]],
    ["Land_I44_Buildings_Bunker_AA", [[["AA"], [2.31982,-2.47934,0.339201], (0)]]],
    ["Land_WW2_Bunker_Gun_L", [[["AT"], [0,0,0], (180)]]],
    ["Land_WW2_Bunker_Gun_R", [[["AT"], [0,2,0], (180)]]],
    ["Land_WW2_BET_Pillbox", [[["RAISED-HMG", "RAISED-GMG"], [0,3.3,0], (0)]]],
    ["Land_WW2_BET_Pillbox_Splinter", [[["RAISED-HMG", "RAISED-GMG"], [0,3.3,0], (0)]]],
    ["Land_WW2_BET_RGB_667_Plant_R",  [[["RAISED-HMG", "RAISED-GMG"], [0,1,-1.2], (0)]]],
    ["Land_WW2_BET_RGB_667_Plant_B", [[["RAISED-HMG", "RAISED-GMG"], [0,1,-1.1], (0)]]],
    ["Land_WW2_BET_RGB_667_R", [[["RAISED-HMG", "RAISED-GMG"], [-1.4,1,-0.5], (0)]]] ,
    ["Land_WW2_BET_RGB_667_B", [[["RAISED-HMG", "RAISED-GMG"], [0,1,-0.5], (0)]]],
    ["Land_WW2_BET_RGB_667_B_A", [[["RAISED-HMG", "RAISED-GMG"], [0,1,-0.5], (0)]]], //
    ["Land_WW2_BET_RGB669_Pak_L_Splinter", [[["AT"], [0,2,-0.2], (0)]]],
    ["Land_WW2_BET_RGB669_Pak_R_Splinter", [[["AT"], [0,2,-0.2], (0)]]],
    ["Land_WW2_BET_RGB669_Pak_L", [[["AT"], [0,2,-0.3], (0)]]], 
    ["Land_WW2_BET_RGB669_Pak_R", [[["AT"], [0,2,-0.3], (0)]]], 
    ["Land_Fort_Bagfence_Bunker", [[["RAISED-HMG", "RAISED-GMG"], [0,0,-0.7], (0)]]],
    ["Land_WW2_Trench_Mortar_w", [[["RAISED-HMG", "RAISED-GMG"], [0,-0.2,0.0837255], (0)]]],
    ["Land_WW2_Trench76_w", [[["AT"], [-1.10352,0.114258,0.946551], (0)]]],
    ["Land_WW2_Trench_MG_Low_w", [[["RAISED-HMG", "RAISED-GMG"], [-0.5,0.5,0.05], (0)]]],
    ["Land_WW2_BET_RGB_671", [[["AT"], [1.43896,-1.45752,-2.29714], (0)]]],
    ["Land_WW2_BET_Unterstand_Art_B", [[["LOWERED-HMG"], [5.32346,-0.337402,-0.481478], (90)]]],
    ["Land_I44_Bunker_01", [[["RAISED-HMG"], [5.32346,-0.337402,-0.481478], (0)]]],
    ["Land_WW2_BET_RGB_667_Com_B", [[["RAISED-HMG", "RAISED-GMG"], [0,0.2,-1.8] , (0)]]],
    ["Land_WW2_Posed", [[["RAISED-HMG", "RAISED-GMG"], [0,0.8,0.9], (0)]]],

    // GRAD Trenches
    ["ACE_envelope_small", [[["RAISED-HMG", "RAISED-GMG"], [0,0,3], (0)]]]
];

KPLIB_staticConfigs_classes = KPLIB_staticsConfigs apply { _x select 0 };

/*
    O objetivo é colocar unidades em posições fixas, idealmente em trincheras, mas pode servir para edificações, se configurado para tal.
    Vai funcionar da mesma forma que KPLIB_staticsConfigs.sqf, fn_createStaticWeapons.sqf, fn_spawnStaticWeapons.sqf.
        Somente necessário mudar o nome dos arquivos e fazer as alterações únicas para esse caso
    A ideia inicial é deixar a lista de configuração no mesmo arquivo (KPLIB_staticsConfigs.sqf), com outra variável.
    É necessário pegar a classe do objeto, seguido por array em array do tipo de unidade a spawnar juntamente com a posição relativa do objeto e a direção relativa da mesma. Por ultimo a postura da unidade.
        KPLIB_unitGarrisonConfigs = [
            ["classe1", [[["RANDOM"], [0,0,0], 0, "UP"]]],
            ["classe2", [[["AT"], [0,0,0], 0, "UP"]]]
        ];
        KPLIB_unitGarrisonConfigs_classes = KPLIB_unitGarrisonConfigs_classes apply { _x select 0 };
    As classes de objetos podem ser duplicadas, somente as posições devem ser diferentes das relacionadas à armas estáticas.
    A unidade em posição não se moverá.
        Será usado um EVENT HANDLER "AnimChanged" para manter a unidade na postura, já que o IA tem tendência de mudar a mesma conforme a situação.
    Podem entrar na blacklist de objetos e de guarnição (fn_sectorObjectBlacklist.sqf)
*/

KPLIB_unitGarrisonConfigs = [
    // IFA3
    ["Land_WW2_Trench_Single_w", [[["AT"], [-0.5,0,0], 0, "UP"]]],
    ["Land_I44_Buildings_Trench2", [[["RANDOM"], [5.8291,-1.69678,0], 0, "UP"], [["RANDOM"], [2.50903,-2.0708,0], 0, "UP"], [["RANDOM"], [0.210938,-2.14282,0], 0, "UP"], [["RANDOM"], [-2.25732,-1.95874,0], 0, "UP"], [["RANDOM"], [-5.80273,-1.53955,0], 0, "UP"]]],
    ["Land_WW2_Big_Infantry_Trench", 
        [
            [["MG", "AT", "SNIPER"], [23.5938,5.46606,-0.6], 0, "UP"], 
            [["RANDOM"], [19.3687,9.14331,-0.753202], 0, "UP"], 
            [["RANDOM"], [12.5547,9.81592,-0.762079], 0, "UP"], 
            [["MG"], [6.80029,11.7766,-0.691682], 0, "UP"], 
            [["RANDOM"], [-0.145752,11.2898,-0.691681], 0, "UP"], 
            [["AT"], [-7.32471,12.1433,-0.691682], 0, "UP"], 
            [["MG"], [-12.9973,11.5964,-0.671074], 0, "UP"], 
            [["SNIPER", "RANDOM"], [-20.5894,10.219,-0.691681], 0, "UP"], 
            [["MG", "AT"], [-27.0415,5.62402,-0.691681], -90, "UP"], 
            [["RANDOM"], [8.81519,5.29395,-0.691766], 180, "UP"], 
            [["RANDOM"], [-9.38867,-0.300293,-0.672698], 90, "UP"], 
            [["RANDOM"], [-14.2649,-5.90405,-0.670269], -90, "UP"], 
            [["RANDOM"], [15.9453,7.72583,-0.691681], 0, "UP"],
            [["RANDOM"], [9.30249,9.11523,-0.665372], 0, "UP"],
            [["RANDOM"], [4.14697,8.698,-0.697924], 0, "UP"],
            [["RANDOM"], [-4.04004,8.62549,-0.69187], 0, "UP"],
            [["RANDOM"], [-16.033,8.5,-0.676406], 0, "UP"],
            [["RANDOM"], [-23.0454,7.23804,-0.688826], 0, "UP"],
            [["RANDOM"], [-12.4333,-2.27344,-0.677077], 0, "UP"],
            [["RANDOM"], [-10.6663,6.1228,-0.73291], 0, "UP"]
        ]
    ],
    ["Land_WW2_Foxhole", [[["AT"], [0,1.58984,0.219656], -90, "MIDDLE"], [["AT"], [0,-0.854736,0.216068], -90, "MIDDLE"]]], 
    ["Land_WW2_Fortification_Pillbox_Small", [[["MG"], [0.0314941,-0.968506,-0.0319052], 180, "UP"], [["RANDOM"], [1.21777,0.13208,-0.0319052], 90, "UP"], [["RANDOM"], [-1.00781,-0.104492,-0.0319052], -90, "UP"]]], 
    ["Land_I44_Buildings_CT_Straight", [[["MG"], [-1.55981,0,-0.477997], 0, "UP"], [["RANDOM"], [0.046875,0,-0.477997], 0, "UP"], [["RANDOM"], [1.58374,0,-0.477997], 0, "UP"]]],
    ["Land_I44_Buildings_CT_Straight_Wire"  , [[["RANDOM"], [-1.55981,-0.433594,-0.477997], 0, "UP"], [["RANDOM"], [0.046875,-0.417236,-0.477997], 0, "UP"], [["RANDOM"], [1.58374,-0.442139,-0.477997], 0, "UP"]]],
    ["Land_WW2_Fortification_Trench_Corner_90", [[["RANDOM"], [-1.4865,0.140137,0.053575], 180, "UP"], [["RANDOM"], [-0.0765871,1.50952,0.053575], 90, "UP"]]], 
    ["Land_WW2_Fortification_Trench_Long_X3", [[["RANDOM"], [0,4.73853,-0.246057], -90, "UP"], [["RANDOM"], [0,2.03687,-0.246056], -90, "UP"], [["RANDOM"], [0,-0.502197,-0.246056], -90, "UP"], [["RANDOM"], [0,-3.35083,-0.246056], -90, "UP"], [["RANDOM"], [0,-5.43237,-0.246056], -90, "UP"]]], 
    ["Land_WW2_Fortification_Trench_Bunker_FFP", [[["MG"], [0.134033,-1.3252,-0.206377], 180, "UP"]]], 
    ["Land_WW2_Fortification_Trench_Wide", [[["AT", "MG"], [0.907955,0.0231934,0.0305476], 0, "UP"], [["AT", "MG"], [-0.862038,-0.111572,0.0305471], 0, "UP"]]], 
    ["Land_WW2_Fortification_Trench_Corner_X2", [[["RANDOM"], [-0.992432,0.818604,0.0305405], 90, "UP"]]],
    ["Land_WW2_Bunker_Mg", [[["MG"], [-0.805176,-2.99629,3.61068], (180), "UP"], [["MG"], [1.1709,-3.33052,3.61068], (180), "UP"]]],
    ["Land_WW2_BET_RGB_671", [[["MG"], [2.29199,-9.01929,-2.29714], 0, "UP"], [["SNIPER"], [2.62524,-1.57544,2.93939], 0, "UP"]]],
    ["Land_WW2_BET_RGB_667_Com_B", [[["SNIPER"], [0.198486,-0.0234375,1.3351], 0, "UP"]]],

    // GRAD Trenches
    ["ACE_envelope_big", [[["RANDOM"], [-1.34229,-1.85974,2.40371], 0, "MIDDLE"], [["RANDOM"], [0.933594,-1.66687,2.40371], 0, "MIDDLE"]]],
    ["GRAD_envelope_giant", [[["RANDOM"], [-3.49072,-1.42168,2.42999], 0, "UP"], [["RANDOM"], [-0.447021,-1.10948,2.42999], 0, "UP"], [["RANDOM"], [2.99072,-1.19173,2.42999], 0, "UP"]]],
    ["GRAD_envelope_short", [[["RANDOM"], [-1.6228,-1.38477,2.39378], 0, "MIDDLE"], [["RANDOM"], [1.54169,-1.53638,2.39378], 0, "MIDDLE"], [["RANDOM"], [0.0193481,-0.724854,2.39378], 0, "UP"]]]
];
KPLIB_unitGarrisonConfigs_classes = KPLIB_unitGarrisonConfigs apply { _x select 0 };

/*
    Mesma ideia, com veículos
*/

KPLIB_vehGarrisonConfigs = [
    ["Land_WW2_TrenchTank", [[[0,-1.5,0], 0]]],
    ["GRAD_envelope_vehicle", [[[0,-1.5,0], 0]]]
];

KPLIB_vehGarrisonConfigs_classes = KPLIB_vehGarrisonConfigs apply { _x select 0 };

KPLIB_allGarrionsConfigs_classes = KPLIB_staticConfigs_classes + KPLIB_unitGarrisonConfigs_classes + KPLIB_vehGarrisonConfigs_classes;