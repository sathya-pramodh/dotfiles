# Saving area in structure block
execute at @e[tag=tp] run setblock ~ ~-10 ~ minecraft:structure_block{name:"random_cave",posX:-15,posY:1,posZ:-15,sizeX:30,sizeY:20,sizeZ:30,rotation:"NONE",mirror:"NONE",mode:"SAVE",ignoreEntities:1b}
execute at @e[tag=tp] run setblock ~ ~-11 ~ air
execute at @e[tag=tp] run setblock ~ ~-11 ~ redstone_block

# Removing all forceloaded chunks
execute at @e[tag=tp] run forceload remove ~ ~
kill @e[tag=tp]