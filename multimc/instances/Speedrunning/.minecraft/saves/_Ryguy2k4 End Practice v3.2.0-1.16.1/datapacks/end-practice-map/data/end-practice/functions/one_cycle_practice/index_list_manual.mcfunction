execute if data storage minecraft:list_manual currentItem.tag.saved run scoreboard players remove list rng 1
execute if data storage minecraft:list_manual currentItem.tag.saved if score list rng matches 0 store result score x rng run data get storage minecraft:list_manual currentItem.tag.xPos
execute if data storage minecraft:list_manual currentItem.tag.saved if score list rng matches 0 store result score y rng run data get storage minecraft:list_manual currentItem.tag.yPos
execute if data storage minecraft:list_manual currentItem.tag.saved if score list rng matches 0 store result score z rng run data get storage minecraft:list_manual currentItem.tag.zPos
execute if data storage minecraft:list_manual currentItem.tag.saved if score list rng matches 0 store result score #Slot EnderDragon run data get storage minecraft:list_manual currentItem.tag.selection
execute if data storage minecraft:list_manual currentItem.tag.saved if score list rng matches 0 run scoreboard players add #Slot EnderDragon 1
data remove storage minecraft:list_manual currentItem