execute if score spawnpoint_stables settings matches -1 run function b:logic/start_button/_spawnpoint/random_aec
execute if score spawnpoint_stables settings matches 0 run tp @e[type=area_effect_cloud, tag=top_stables, limit=1]
execute if score spawnpoint_stables settings matches 0 at @e[type=area_effect_cloud, tag=top_stables, limit=1] if block ~ ~-1 ~ air run setblock ~ ~-1 ~ minecraft:polished_blackstone_bricks
execute if score spawnpoint_stables settings matches 1 run tp @e[type=area_effect_cloud, tag=bottom_stairs, limit=1]
execute if score spawnpoint_stables settings matches 2 run tp @e[type=area_effect_cloud, tag=middle_stairs, limit=1]
execute if score spawnpoint_stables settings matches 3 run tp @e[type=area_effect_cloud, tag=top_stairs, limit=1]
execute if score spawnpoint_stables settings matches 4 run tp @e[type=area_effect_cloud, tag=backside_middle, limit=1]
execute if score spawnpoint_stables settings matches 5 run tp @e[type=area_effect_cloud, tag=left_gap_bottom, limit=1]
execute if score spawnpoint_stables settings matches 6 run tp @e[type=area_effect_cloud, tag=right_gap, limit=1]
execute if score spawnpoint_stables settings matches 7 run tp @e[type=area_effect_cloud, tag=left_rampart, limit=1]
execute if score spawnpoint_stables settings matches 8 run tp @e[type=area_effect_cloud, tag=middle_rampart, limit=1]
execute if score spawnpoint_stables settings matches 9 run tp @e[type=area_effect_cloud, tag=right_rampart, limit=1]