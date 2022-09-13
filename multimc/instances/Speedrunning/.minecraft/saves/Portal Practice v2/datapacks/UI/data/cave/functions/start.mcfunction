say New position...

kill @e[tag=cave]
summon area_effect_cloud ~ ~ ~ {Tags:["cave"]}

execute as @e[tag=cave,limit=1] at @s run function cave:cloud