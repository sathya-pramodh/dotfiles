execute if score spawnpoint_treasure settings matches -1 run function b:logic/start_button/_spawnpoint/random_aec
execute if score spawnpoint_treasure settings matches 0 run tp @e[type=area_effect_cloud, tag=lava_basin, limit=1]
execute if score spawnpoint_treasure settings matches 1 run tp @e[type=area_effect_cloud, tag=ledge, limit=1]
execute if score spawnpoint_treasure settings matches 2 run tp @e[type=area_effect_cloud, tag=top_lower, limit=1]
execute if score spawnpoint_treasure settings matches 3 run tp @e[type=area_effect_cloud, tag=lower_treasure, limit=1]
execute if score spawnpoint_treasure settings matches 4 run tp @e[type=area_effect_cloud, tag=left_rampart_top, limit=1]
execute if score spawnpoint_treasure settings matches 5 run tp @e[type=area_effect_cloud, tag=right_rampart_top, limit=1]