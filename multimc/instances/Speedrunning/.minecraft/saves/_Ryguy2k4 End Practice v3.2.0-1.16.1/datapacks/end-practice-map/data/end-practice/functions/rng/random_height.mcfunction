summon area_effect_cloud 0 0 0 {Tags:["random_x"]}
summon area_effect_cloud 0 0 0 {Tags:["random_y"]}
summon area_effect_cloud 0 0 0 {Tags:["random_z"]}
execute store result score x rng run data get entity @e[type=area_effect_cloud,tag=random_x,limit=1] UUID[0] 1
execute store result score y rng run data get entity @e[type=area_effect_cloud,tag=random_y,limit=1] UUID[0] 1
execute store result score z rng run data get entity @e[type=area_effect_cloud,tag=random_z,limit=1] UUID[0] 1
scoreboard players operation x rng %= xRange CONSTANT
scoreboard players operation y rng %= yRange CONSTANT
scoreboard players operation z rng %= zRange CONSTANT
scoreboard players remove x rng 8000
scoreboard players add y rng 77000
scoreboard players add z rng 30000
kill @e[tag=random_x]
kill @e[tag=random_y]
kill @e[tag=random_z]