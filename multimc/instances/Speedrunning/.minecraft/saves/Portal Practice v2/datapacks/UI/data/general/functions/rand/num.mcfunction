# Getting random number
summon area_effect_cloud 0 0 0 {Tags:["rand"]}
execute store result score num rand run data get entity @e[tag=rand,limit=1] UUID[0]
kill @e[tag=rand]

# Modular
scoreboard players operation num rand %= mod rand