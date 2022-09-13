summon area_effect_cloud 0 0 0 {Tags:["random_island"],Duration:500}
execute store result score island rng run data get entity @e[type=area_effect_cloud,tag=random_island,limit=1] UUID[0] 1
scoreboard players operation island rng %= numIslands CONSTANT
kill @e[tag=random_island]