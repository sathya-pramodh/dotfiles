# Loading area from structure block
execute positioned -75 50 75 run setblock ~ ~-10 ~ minecraft:structure_block{name:"random_cave",posX:-15,posY:1,posZ:-15,sizeX:30,sizeY:20,sizeZ:30,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b}
execute positioned -75 50 75 run setblock ~ ~-11 ~ air
execute positioned -75 50 75 run setblock ~ ~-11 ~ redstone_block

