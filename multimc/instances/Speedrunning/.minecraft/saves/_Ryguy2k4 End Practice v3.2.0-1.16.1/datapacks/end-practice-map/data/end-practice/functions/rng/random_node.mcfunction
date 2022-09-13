summon area_effect_cloud 0 0 0 {Tags:["random_node"]}
execute store result score node rng run data get entity @e[type=area_effect_cloud,tag=random_node,limit=1] UUID[0] 1
scoreboard players operation node rng %= 2 CONSTANT
kill @e[tag=random_node]