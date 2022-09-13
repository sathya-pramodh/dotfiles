# Don't ask how this works
tag @e[type=ender_dragon,limit=2] add c
tag @e[type=ender_dragon,limit=1] remove c
execute as @e[tag=c] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["g"]}
execute as @e[tag=g] at @s positioned ~-640 ~ ~-880 store result score headDist Dragon run locate endcity
execute if score phase Dragon matches 3 if score dragonDistance Settings matches 1 run title @a actionbar {"score":{"name":"headDist","objective":"Dragon"},"bold":"true"}
kill @e[type=area_effect_cloud,tag=g]