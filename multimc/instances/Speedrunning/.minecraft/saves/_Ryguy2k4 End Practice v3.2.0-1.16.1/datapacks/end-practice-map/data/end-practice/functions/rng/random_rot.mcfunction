summon area_effect_cloud 0 0 0 {Tags:["random_rot"]}
execute store result score rotation rng run data get entity @e[type=area_effect_cloud,tag=random_rot,limit=1] UUID[0] 1
scoreboard players operation rotation rng %= rRange CONSTANT
kill @e[tag=random_rot]