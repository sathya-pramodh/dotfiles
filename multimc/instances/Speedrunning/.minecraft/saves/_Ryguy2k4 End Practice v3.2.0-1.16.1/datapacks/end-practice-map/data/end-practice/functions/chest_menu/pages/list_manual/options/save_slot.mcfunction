# If slot is empty
execute store result storage minecraft:list_manual currentItem.tag.xPos int 1 run scoreboard players get x rng
execute store result storage minecraft:list_manual currentItem.tag.yPos int 1 run scoreboard players get y rng
execute store result storage minecraft:list_manual currentItem.tag.zPos int 1 run scoreboard players get z rng
data modify storage minecraft:list_manual currentItem.tag.saved set value 1
data modify storage minecraft:list_manual currentItem.tag.display.Name set value '{"text":"Saved Slot","italic":"false","bold":"true"}'
execute store result score selection ChestMenu run data get storage minecraft:list_manual currentItem.tag.selection
execute if score selection ChestMenu matches 0 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 1","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 1 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 2","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 2 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 3","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 3 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 4","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 4 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 5","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 5 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 6","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 6 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 7","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 7 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 8","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 8 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 9","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 9 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 10","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 10 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 11","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 11 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 12","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 12 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 13","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 13 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 14","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 14 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 15","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 15 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 16","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 16 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 17","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 17 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 18","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 18 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 19","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 19 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 20","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 20 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 21","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 21 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 22","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 22 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 23","italic":"false","color":"white"}']
execute if score selection ChestMenu matches 23 run data modify storage minecraft:list_manual currentItem.tag.display.Lore set value ['{"text":""}','{"text":"Click to manage slot 24","italic":"false","color":"white"}']
data modify storage minecraft:list_manual currentItem.id set value "minecraft:golden_apple"
function end-practice:chest_menu/pages/list_manual/options/restore_current_item
execute at @s run playsound minecraft:ui.cartography_table.take_result ambient @s ~ ~ ~ 5 0.8