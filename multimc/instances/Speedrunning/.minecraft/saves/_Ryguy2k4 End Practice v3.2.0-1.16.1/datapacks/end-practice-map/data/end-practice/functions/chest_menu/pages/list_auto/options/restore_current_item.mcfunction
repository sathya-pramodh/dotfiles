# Remove selected item from the hotseat
execute store result score selection ChestMenu run data get storage minecraft:list_auto currentItem.tag.selection
execute if score selection ChestMenu matches 0 run data modify storage minecraft:list_auto Items[0] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 1 run data modify storage minecraft:list_auto Items[1] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 2 run data modify storage minecraft:list_auto Items[2] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 3 run data modify storage minecraft:list_auto Items[3] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 4 run data modify storage minecraft:list_auto Items[4] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 5 run data modify storage minecraft:list_auto Items[5] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 6 run data modify storage minecraft:list_auto Items[6] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 7 run data modify storage minecraft:list_auto Items[7] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 8 run data modify storage minecraft:list_auto Items[9] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 9 run data modify storage minecraft:list_auto Items[10] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 10 run data modify storage minecraft:list_auto Items[11] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 11 run data modify storage minecraft:list_auto Items[12] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 12 run data modify storage minecraft:list_auto Items[13] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 13 run data modify storage minecraft:list_auto Items[14] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 14 run data modify storage minecraft:list_auto Items[15] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 15 run data modify storage minecraft:list_auto Items[16] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 16 run data modify storage minecraft:list_auto Items[18] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 17 run data modify storage minecraft:list_auto Items[19] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 18 run data modify storage minecraft:list_auto Items[20] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 19 run data modify storage minecraft:list_auto Items[21] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 20 run data modify storage minecraft:list_auto Items[22] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 21 run data modify storage minecraft:list_auto Items[23] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 22 run data modify storage minecraft:list_auto Items[24] set from storage minecraft:list_auto currentItem
execute if score selection ChestMenu matches 23 run data modify storage minecraft:list_auto Items[25] set from storage minecraft:list_auto currentItem
data remove storage minecraft:list_auto currentItem
scoreboard players reset selection ChestMenu