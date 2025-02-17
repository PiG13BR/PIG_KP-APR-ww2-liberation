private _objects_to_build = [
    [opfor_static_mg, [10.95, 10.81, 0.00], 4.66],
	["Land_ClutterCutter_medium_F", [9.22, 10.28, 0.00], 357.44],
    ["AmmoCrates_NoInteractive_Large", [12.05, 10.52, 0.00], 152.98],
    ["Land_fort_artillery_nest", [-1.19, -13.78, 0.00], 0.80],
    ["Land_DirtPatch_05_F", [-0.33, 17.21, 0.52], 357.83],
    ["Land_ClutterCutter_large_F", [-0.64, 18.03, 0.00], 357.83],
    ["CUP_hromada_beden_dekorativniX", [-5.45, -17.40, 0.00], 138.21],
    ["Land_DirtPatch_05_F", [16.82, 7.66, 0.00], 357.83],
    ["Land_ClutterCutter_large_F", [-0.86, -18.53, 0.00], 357.83],
    ["Land_BagFence_Round_F", [-0.63, 19.18, 0.00], 187.45],
    ["CUP_hromada_beden_dekorativniX", [-14.18, 12.96, 0.00], 232.80],
    ["Land_ClutterCutter_large_F", [-19.45, -1.58, 0.00], 357.83],
    ["Land_DirtPatch_05_F", [-1.09, -19.56, 0.00], 357.83],
    ["Land_ClutterCutter_large_F", [18.33, 9.00, 0.00], 357.83],
    ["Land_DirtPatch_05_F", [-18.30, 10.75, 0.00], 357.83],
    ["CUP_hromada_beden_dekorativniX", [20.89, 5.04, 0.00], 303.51],
    ["Land_jezekbeton", [3.33, 21.29, 0.00], 1.94],
    ["Land_fort_artillery_nest", [21.64, 12.82, 0.00], 45.81],
    ["Land_ClutterCutter_large_F", [19.46, -11.28, 0.00], 4.76],
    ["Land_ClutterCutter_large_F", [-19.31, 11.55, 0.00], 357.83],
    ["Land_Razorwire_F", [10.84, 20.84, 0.00], 183.96],
    ["Land_jezekbeton", [-5.62, 22.26, 0.00], 1.94],
    ["Land_fort_artillery_nest", [-20.97, 16.23, 0.00], 337.19],
    ["Land_jezekbeton", [15.02, 20.55, 0.00], 1.94],
    ["Land_Razorwire_F", [-9.80, 22.55, 0.00], 183.96],
    ["Land_Razorwire_F", [-1.32, -26.80, 0.00], 183.96],
    ["Land_Razorwire_F", [9.64, -25.08, 0.00], 159.56],
    ["Land_jezekbeton", [13.29, -23.69, 0.00], 1.94],
    ["Land_jezekbeton", [2.86, -27.09, 0.00], 1.94],
    ["Land_Razorwire_F", [-12.43, -24.75, 0.00], 206.67],
    ["Land_jezekbeton", [-8.82, -26.35, 0.00], 1.94],
    ["Land_Razorwire_F", [21.87, 19.44, 0.00], 191.72],
    ["Land_jezekbeton", [-17.30, 23.00, 0.00], 1.94],
    ["Land_jezekbeton", [-19.12, -21.72, 0.00], 1.94],
    ["Land_ClutterCutter_large_F", [-28.44, -8.79, 0.00], 357.83],
    ["Land_Razorwire_F", [28.87, 12.45, 0.00], 240.12],
    ["Land_jezekbeton", [25.58, 18.24, 0.00], 74.29],
    ["Land_Razorwire_F", [-21.43, 22.10, 0.00], 156.46],
    ["Land_jezekbeton", [30.58, 8.30, 0.00], 74.29],
    ["Land_jezekbeton", [-31.80, 7.63, 0.00], 1.94],
    ["Land_Razorwire_F", [-29.69, 14.86, 0.00], 108.33],
    ["Land_jezekbeton", [-28.24, 18.91, 0.00], 1.94]
];

private _objectives_to_build = [
    // Move all things which should be destroyed to accomplish the mission from the above to this array
	[opfor_antenna, [-19.94, -1.56, 0.00], 157.61],
	[opfor_static_at, [-0.27, 18.48, 0.01], 6.70],
	[opfor_arty, [-0.56, -17.81, -0.02], 2.15],
	[opfor_arty, [18.49, 9.97, -0.02], 47.80],
	[opfor_arty, [-18.53, 12.55, -0.02], 339.19],
	[opfor_ammo_truck, [4.27, -4.96, -0.00], 127.41]
];

private _defenders_to_build = [
    [opfor_sharpshooter, [12.43, 9.69, 0.00], 349.22],
    [opfor_squad_leader, [-17.41, -2.88, 0.00], 354.06],
    [opfor_rifleman, [-13.55, 11.54, 0.00], 344.80],
    [opfor_grenadier, [-15.57, 11.40, 0.00], 13.47],
    [opfor_team_leader, [-16.23, -10.40, 0.00], 202.01],
    [opfor_sentry, [19.07, 5.03, 0.00], 89.16],
    [opfor_marksman, [19.66, 3.43, 0.00], 76.51],
    [opfor_medic, [-14.86, 13.68, 0.00], 62.51],
    [opfor_machinegunner, [-19.85, -5.16, 0.00], 164.09],
    [opfor_heavygunner, [3.76, -20.13, 0.00], 78.24],
    [opfor_rifleman, [-6.66, -21.71, 0.00], 274.15],
    [opfor_grenadier, [-19.72, -11.54, 0.00], 102.82],
    [opfor_rifleman, [-18.43, -13.95, 0.00], 44.76],
    [opfor_rpg, [-23.19, 8.62, 0.00], 274.15]
];

private _base_corners = [
    [40, 40, 0],
    [40, -40, 0],
    [-40, -40, 0],
    [-40, 40, 0]
];

[_objects_to_build, _objectives_to_build, _defenders_to_build, _base_corners]