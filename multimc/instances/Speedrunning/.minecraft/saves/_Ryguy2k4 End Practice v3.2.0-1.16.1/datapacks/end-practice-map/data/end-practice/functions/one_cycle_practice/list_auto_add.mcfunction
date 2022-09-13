# Index through each slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[0]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[1]  
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot  
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[2]  
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[3]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[4]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[5]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[6]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[7]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[9]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[10]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[11]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[12]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[13]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[14]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[15]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[16]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[18]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[19]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[20]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[21]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[22]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[23]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[24]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[25]
execute if score auto Dragon matches 1 unless data storage minecraft:list_auto currentItem.tag.saved run function end-practice:chest_menu/pages/list_auto/options/save_slot

# if no open slots, print error message
execute if score auto Dragon matches 0 run tellraw @p {"text":"Previous height was added to Auto List","color":"green"}
execute if score auto Dragon matches 1 run tellraw @p {"text":"Error: Auto list is full, could not auto-add previous height","color":"red"}
execute if score auto Dragon matches 1 run scoreboard players set auto Dragon 0