summon area_effect_cloud ~-18 ~19 ~-24 {Rotation: [-90.0f, 0.0f], Tags: ["top_stables", "spawnpoint"]}
summon area_effect_cloud ~-2 ~4 ~-27 {Rotation: [-90.0f, 0.0f], Tags: ["bottom_stairs", "spawnpoint"]}
summon area_effect_cloud ~-7 ~9 ~-18 {Rotation: [-90.0f, 0.0f], Tags: ["middle_stairs", "spawnpoint"]}
summon area_effect_cloud ~-5 ~21 ~-30 {Rotation: [-90.0f, 0.0f], Tags: ["top_stairs", "spawnpoint"]}
summon area_effect_cloud ~16 ~12 ~-23 {Rotation: [90.0f, 0.0f], Tags: ["backside_middle", "spawnpoint"]}
summon area_effect_cloud ~13 ~12 ~-27 {Rotation: [180.0f, 0.0f], Tags: ["left_gap_bottom", "spawnpoint"]}
summon area_effect_cloud ~8 ~12 ~-18 {Rotation: [0.0f, 0.0f], Tags: ["right_gap", "spawnpoint"]}

execute if block ~12 ~26 ~-36 chest run summon area_effect_cloud ~4 ~24 ~-44 {Rotation: [-45.0f, 0.0f], Tags: ["left_rampart", "spawnpoint"]}
execute if block ~6 ~26 ~-45 chest run summon area_effect_cloud ~3 ~26 ~-43 {Rotation: [-90.0f, 0.0f], Tags: ["left_rampart", "spawnpoint"]}
execute if block ~11 ~40 ~-43 chest run summon area_effect_cloud ~7 ~39 ~-36 {Rotation: [-135.0f, 0.0f], Tags: ["left_rampart", "spawnpoint"]}

execute if block ~10 ~26 ~-20 chest run summon area_effect_cloud ~2 ~24 ~-28 {Rotation: [-45.0f, 0.0f], Tags: ["middle_rampart", "spawnpoint"]}
execute if block ~4 ~26 ~-29 chest run summon area_effect_cloud ~1 ~26 ~-27 {Rotation: [-90.0f, 0.0f], Tags: ["middle_rampart", "spawnpoint"]}
execute if block ~9 ~40 ~-27 chest run summon area_effect_cloud ~5 ~39 ~-20 {Rotation: [-135.0f, 0.0f], Tags: ["middle_rampart", "spawnpoint"]}

execute if block ~12 ~26 ~-4 chest run summon area_effect_cloud ~4 ~24 ~-12 {Rotation: [-45.0f, 0.0f], Tags: ["right_rampart", "spawnpoint"]}
execute if block ~6 ~26 ~-13 chest run summon area_effect_cloud ~3 ~26 ~-11 {Rotation: [-90.0f, 0.0f], Tags: ["right_rampart", "spawnpoint"]}
execute if block ~11 ~40 ~-11 chest run summon area_effect_cloud ~7 ~39 ~-4 {Rotation: [-135.0f, 0.0f], Tags: ["right_rampart", "spawnpoint"]}
