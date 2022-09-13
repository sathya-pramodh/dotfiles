summon area_effect_cloud 0 0 0 {Tags:["random_loadout"]}
execute store result score loadout rng run data get entity @e[type=area_effect_cloud,tag=random_loadout,limit=1] UUID[0] 1
scoreboard players operation loadout rng %= numLoadouts CONSTANT
kill @e[tag=random_loadout]