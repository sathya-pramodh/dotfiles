# Adding count
scoreboard players add count r_cave 1

# Adding some values to be modified
data modify storage main cave append value {x:0,y:0,z:0}

# Modifying the values to entity position
execute store result storage main cave[-1].x double 1 run data get entity @s Pos[0]
execute store result storage main cave[-1].y double 1 run data get entity @s Pos[1]
execute store result storage main cave[-1].z double 1 run data get entity @s Pos[2]

# Finding another position
execute if score repeat r_cave matches 1 run schedule function cave:start 1t