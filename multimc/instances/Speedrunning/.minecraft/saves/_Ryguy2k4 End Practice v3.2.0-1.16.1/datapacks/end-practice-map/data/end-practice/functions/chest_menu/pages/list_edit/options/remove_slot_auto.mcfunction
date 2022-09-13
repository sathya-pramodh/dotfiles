data remove storage minecraft:list_auto currentItem.tag.saved
data remove storage minecraft:list_auto currentItem.tag.xPos
data remove storage minecraft:list_auto currentItem.tag.yPos
data remove storage minecraft:list_auto currentItem.tag.zPos
data modify storage minecraft:list_auto currentItem.tag.display.Name set value '{"text":"Empty Slot","italic":"false","bold":"false"}'
data modify storage minecraft:list_auto currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to save loaded/previous height","italic":"false","color":"white"}']
data modify storage minecraft:list_auto currentItem.id set value "minecraft:apple"
function end-practice:chest_menu/pages/list_auto/options/restore_current_item
scoreboard players set @s ChestMenu 3