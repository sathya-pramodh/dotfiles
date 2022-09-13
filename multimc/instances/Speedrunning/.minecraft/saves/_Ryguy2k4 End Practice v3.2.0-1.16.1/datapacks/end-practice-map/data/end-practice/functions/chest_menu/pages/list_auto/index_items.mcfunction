execute store result score tx ChestMenu run data get storage minecraft:list_auto currentItem.tag.xPos
execute store result score ty ChestMenu run data get storage minecraft:list_auto currentItem.tag.yPos
execute store result score tz ChestMenu run data get storage minecraft:list_auto currentItem.tag.zPos
scoreboard players set check ChestMenu 3
execute if score tx ChestMenu = x rng run scoreboard players remove check ChestMenu 1
execute if score ty ChestMenu = y rng run scoreboard players remove check ChestMenu 1
execute if score tz ChestMenu = z rng run scoreboard players remove check ChestMenu 1
execute if score check ChestMenu matches 0 if data storage minecraft:list_auto currentItem.tag.saved run data modify storage minecraft:list_auto currentItem.id set value "minecraft:enchanted_golden_apple"
execute if score check ChestMenu matches 0 if data storage minecraft:list_auto currentItem.tag.saved run data modify storage minecraft:list_auto currentItem.tag.display.Name set value '{"text":"Saved Slot (Loaded)","italic":"false","bold":"true"}'
execute unless score check ChestMenu matches 0 if data storage minecraft:list_auto currentItem.tag.saved run data modify storage minecraft:list_auto currentItem.id set value "minecraft:golden_apple"
execute unless score check ChestMenu matches 0 if data storage minecraft:list_auto currentItem.tag.saved run data modify storage minecraft:list_auto currentItem.tag.display.Name set value '{"text":"Saved Slot","italic":"false","bold":"true"}'
function end-practice:chest_menu/pages/list_auto/options/restore_current_item