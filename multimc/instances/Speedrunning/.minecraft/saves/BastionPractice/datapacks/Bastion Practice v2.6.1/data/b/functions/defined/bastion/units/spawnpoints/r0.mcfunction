summon area_effect_cloud ~0 ~4 ~21 {Rotation: [90.0f, 0.0f], Tags: ["bottom_stairs", "spawnpoint"]}
summon area_effect_cloud ~-2 ~11 ~33 {Rotation: [135.0f, 0.0f], Tags: ["middle_stairs", "spawnpoint"]}
summon area_effect_cloud ~-1 ~24 ~32 {Rotation: [135.0f, 0.0f], Tags: ["top_stairs", "spawnpoint"]}
summon area_effect_cloud ~-16 ~6 ~24 {Rotation: [-90.0f, 0.0f], Tags: ["backside_main", "spawnpoint"]}
summon area_effect_cloud ~-15 ~11 ~48 {Rotation: [-135.0f, 0.0f], Tags: ["backside_left", "spawnpoint"]}
summon area_effect_cloud ~-9 ~52 ~31 {Rotation: [-135.0f, 0.0f], Tags: ["top", "spawnpoint"]}
summon area_effect_cloud ~-5 ~40 ~22 {Rotation: [45.0f, 0.0f], Tags: ["triple", "spawnpoint"]}
execute if block ~20 ~1 ~26 chest run summon area_effect_cloud ~25 ~2 ~27 {Rotation: [90.0f, 0.0f], Tags: ["center_chest", "spawnpoint"]}
execute if block ~25 ~1 ~28 chest run summon area_effect_cloud ~27 ~1 ~29 {Rotation: [90.0f, 0.0f], Tags: ["center_chest", "spawnpoint"]}
execute if block ~27 ~1 ~22 chest run summon area_effect_cloud ~29 ~1 ~23 {Rotation: [90.0f, 0.0f], Tags: ["center_chest", "spawnpoint"]}
