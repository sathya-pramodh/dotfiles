### when an item is selected ###

# Put selected item into the hotseat
execute if score selection ChestMenu matches 0 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[0]
execute if score selection ChestMenu matches 1 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[1]    
execute if score selection ChestMenu matches 2 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[2]  
execute if score selection ChestMenu matches 3 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[3]
execute if score selection ChestMenu matches 4 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[4]
execute if score selection ChestMenu matches 5 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[5]
execute if score selection ChestMenu matches 6 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[6]
execute if score selection ChestMenu matches 7 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[7]
execute if score selection ChestMenu matches 8 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[9]
execute if score selection ChestMenu matches 9 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[10]
execute if score selection ChestMenu matches 10 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[11]
execute if score selection ChestMenu matches 11 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[12]
execute if score selection ChestMenu matches 12 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[13]
execute if score selection ChestMenu matches 13 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[14]
execute if score selection ChestMenu matches 14 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[15]
execute if score selection ChestMenu matches 15 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[16]
execute if score selection ChestMenu matches 16 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[18]
execute if score selection ChestMenu matches 17 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[19]
execute if score selection ChestMenu matches 18 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[20]
execute if score selection ChestMenu matches 19 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[21]
execute if score selection ChestMenu matches 20 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[22]
execute if score selection ChestMenu matches 21 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[23]
execute if score selection ChestMenu matches 22 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[24]
execute if score selection ChestMenu matches 23 run data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[25]

# Act on the item in the hotseat
execute if score selection ChestMenu matches 0..23 if data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/edit_slot

# uncomment to allow manual saving to auto list
#execute if score selection ChestMenu matches 0..23 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot

# Other Buttons
execute if score selection ChestMenu matches 24 run scoreboard players set @s ChestMenu 4
execute if score selection ChestMenu matches 24 at @s run playsound minecraft:item.book.page_turn ambient @s ~ ~ ~ 5 1.2
execute if score selection ChestMenu matches 25 run data modify storage minecraft:list_auto Items set from storage minecraft:list_auto_default Items

scoreboard players reset selection ChestMenu
