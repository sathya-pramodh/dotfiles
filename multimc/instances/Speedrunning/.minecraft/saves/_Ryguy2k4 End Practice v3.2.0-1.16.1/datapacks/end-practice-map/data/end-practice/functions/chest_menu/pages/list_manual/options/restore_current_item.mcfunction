# Remove selected item from the hotseat
execute store result score selection ChestMenu run data get storage minecraft:list_manual currentItem.tag.selection
execute if score selection ChestMenu matches 0 run data modify storage minecraft:list_manual Items[0] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 1 run data modify storage minecraft:list_manual Items[1] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 2 run data modify storage minecraft:list_manual Items[2] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 3 run data modify storage minecraft:list_manual Items[3] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 4 run data modify storage minecraft:list_manual Items[4] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 5 run data modify storage minecraft:list_manual Items[5] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 6 run data modify storage minecraft:list_manual Items[6] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 7 run data modify storage minecraft:list_manual Items[7] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 8 run data modify storage minecraft:list_manual Items[9] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 9 run data modify storage minecraft:list_manual Items[10] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 10 run data modify storage minecraft:list_manual Items[11] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 11 run data modify storage minecraft:list_manual Items[12] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 12 run data modify storage minecraft:list_manual Items[13] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 13 run data modify storage minecraft:list_manual Items[14] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 14 run data modify storage minecraft:list_manual Items[15] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 15 run data modify storage minecraft:list_manual Items[16] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 16 run data modify storage minecraft:list_manual Items[18] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 17 run data modify storage minecraft:list_manual Items[19] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 18 run data modify storage minecraft:list_manual Items[20] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 19 run data modify storage minecraft:list_manual Items[21] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 20 run data modify storage minecraft:list_manual Items[22] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 21 run data modify storage minecraft:list_manual Items[23] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 22 run data modify storage minecraft:list_manual Items[24] set from storage minecraft:list_manual currentItem
execute if score selection ChestMenu matches 23 run data modify storage minecraft:list_manual Items[25] set from storage minecraft:list_manual currentItem
data remove storage minecraft:list_manual currentItem
scoreboard players reset selection ChestMenu