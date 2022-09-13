data remove storage minecraft:list_manual currentItem.tag.saved
data remove storage minecraft:list_manual currentItem.tag.xPos
data remove storage minecraft:list_manual currentItem.tag.yPos
data remove storage minecraft:list_manual currentItem.tag.zPos
data modify storage minecraft:list_manual currentItem.tag.display.Name set value '{"text":"Empty Slot","italic":"false","bold":"false"}'
data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to save loaded/previous height","italic":"false","color":"white"}']
data modify storage minecraft:list_manual currentItem.id set value "minecraft:apple"
function end-practice:chest_menu/pages/list_manual/options/restore_current_item
scoreboard players set @s ChestMenu 4