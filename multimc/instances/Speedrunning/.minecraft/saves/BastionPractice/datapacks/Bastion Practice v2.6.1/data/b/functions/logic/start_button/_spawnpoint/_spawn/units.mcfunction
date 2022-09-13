execute if score spawnpoint_units settings matches -1 run function b:logic/start_button/_spawnpoint/random_aec
execute if score spawnpoint_units settings matches 0 run tp @e[type=area_effect_cloud, tag=bottom_stairs, limit=1]
execute if score spawnpoint_units settings matches 1 run tp @e[type=area_effect_cloud, tag=middle_stairs, limit=1]
execute if score spawnpoint_units settings matches 2 run tp @e[type=area_effect_cloud, tag=top_stairs, limit=1]
execute if score spawnpoint_units settings matches 3 run tp @e[type=area_effect_cloud, tag=backside_main, limit=1]
execute if score spawnpoint_units settings matches 4 run tp @e[type=area_effect_cloud, tag=backside_left, limit=1]
execute if score spawnpoint_units settings matches 5 run tp @e[type=area_effect_cloud, tag=top, limit=1]
execute if score spawnpoint_units settings matches 6 run tp @e[type=area_effect_cloud, tag=triple, limit=1]
execute if score spawnpoint_units settings matches 7 run tp @e[type=area_effect_cloud, tag=center_chest, limit=1]