summon area_effect_cloud ~24 ~19 ~-18 {Rotation: [0.0f, 0.0f], Tags: ["top_stables", "spawnpoint"]}
summon area_effect_cloud ~27 ~4 ~-2 {Rotation: [0.0f, 0.0f], Tags: ["bottom_stairs", "spawnpoint"]}
summon area_effect_cloud ~18 ~9 ~-7 {Rotation: [0.0f, 0.0f], Tags: ["middle_stairs", "spawnpoint"]}
summon area_effect_cloud ~30 ~21 ~-5 {Rotation: [0.0f, 0.0f], Tags: ["top_stairs", "spawnpoint"]}
summon area_effect_cloud ~23 ~12 ~16 {Rotation: [180.0f, 0.0f], Tags: ["backside_middle", "spawnpoint"]}
summon area_effect_cloud ~27 ~12 ~13 {Rotation: [-90.0f, 0.0f], Tags: ["left_gap_bottom", "spawnpoint"]}
summon area_effect_cloud ~18 ~12 ~8 {Rotation: [90.0f, 0.0f], Tags: ["right_gap", "spawnpoint"]}

execute if block ~36 ~26 ~12 chest run summon area_effect_cloud ~44 ~24 ~4 {Rotation: [45.0f, 0.0f], Tags: ["left_rampart", "spawnpoint"]}
execute if block ~45 ~26 ~6 chest run summon area_effect_cloud ~43 ~26 ~3 {Rotation: [0.0f, 0.0f], Tags: ["left_rampart", "spawnpoint"]}
execute if block ~43 ~40 ~11 chest run summon area_effect_cloud ~36 ~39 ~7 {Rotation: [-45.0f, 0.0f], Tags: ["left_rampart", "spawnpoint"]}

execute if block ~20 ~26 ~10 chest run summon area_effect_cloud ~28 ~24 ~2 {Rotation: [45.0f, 0.0f], Tags: ["middle_rampart", "spawnpoint"]}
execute if block ~29 ~26 ~4 chest run summon area_effect_cloud ~27 ~26 ~1 {Rotation: [0.0f, 0.0f], Tags: ["middle_rampart", "spawnpoint"]}
execute if block ~27 ~40 ~9 chest run summon area_effect_cloud ~20 ~39 ~5 {Rotation: [-45.0f, 0.0f], Tags: ["middle_rampart", "spawnpoint"]}

execute if block ~4 ~26 ~12 chest run summon area_effect_cloud ~12 ~24 ~4 {Rotation: [45.0f, 0.0f], Tags: ["right_rampart", "spawnpoint"]}
execute if block ~13 ~26 ~6 chest run summon area_effect_cloud ~11 ~26 ~3 {Rotation: [0.0f, 0.0f], Tags: ["right_rampart", "spawnpoint"]}
execute if block ~11 ~40 ~11 chest run summon area_effect_cloud ~4 ~39 ~7 {Rotation: [-45.0f, 0.0f], Tags: ["right_rampart", "spawnpoint"]}
