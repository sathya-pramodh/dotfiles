# Summoning an area effect cloud to tp around with data values
kill @e[tag=generate]
summon area_effect_cloud ~ ~ ~ {Tags:["generate"],Duration:1}

# Setting an x and z tracker to 0
scoreboard players set x magma 0
scoreboard players set z magma 0
scoreboard players set generate magma 1

# Copying data into temp storage
data modify storage magma temp set from storage magma formation

execute as @e[tag=generate] run function magma:generate/loop