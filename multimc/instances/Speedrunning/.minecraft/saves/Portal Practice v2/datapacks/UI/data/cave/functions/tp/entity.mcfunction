# Teleporting entity to position
execute store result entity @s Pos[0] double 1 run data get storage main pos.x
execute store result entity @s Pos[1] double 1 run data get storage main pos.y
execute store result entity @s Pos[2] double 1 run data get storage main pos.z

# Saving area in structure block
execute at @s run forceload add ~ ~

# Saving
schedule function cave:tp/save 1t

# Loading
schedule function cave:tp/load 2t