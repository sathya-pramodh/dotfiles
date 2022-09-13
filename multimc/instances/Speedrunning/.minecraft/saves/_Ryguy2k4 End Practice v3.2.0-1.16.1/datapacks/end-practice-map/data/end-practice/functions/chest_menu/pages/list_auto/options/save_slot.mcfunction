# If slot is empty
execute store result storage minecraft:list_auto currentItem.tag.xPos int 1 run scoreboard players get x rng
execute store result storage minecraft:list_auto currentItem.tag.yPos int 1 run scoreboard players get y rng
execute store result storage minecraft:list_auto currentItem.tag.zPos int 1 run scoreboard players get z rng
data modify storage minecraft:list_auto currentItem.tag.saved set value 1
data modify storage minecraft:list_auto currentItem.tag.display.Name set value '{"text":"Saved Slot","italic":"false","bold":"true"}'
data modify storage minecraft:list_auto currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage this slot","italic":"false","color":"white"}']
data modify storage minecraft:list_auto currentItem.id set value "minecraft:golden_apple"
function end-practice:chest_menu/pages/list_auto/options/restore_current_item
scoreboard players set auto Dragon 0