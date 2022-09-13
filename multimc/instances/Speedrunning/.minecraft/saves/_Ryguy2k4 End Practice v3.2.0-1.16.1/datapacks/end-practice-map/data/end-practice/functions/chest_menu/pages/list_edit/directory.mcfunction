### when an item is selected ###

# get page
execute if data storage minecraft:list_manual currentItem store result score page ChestMenu run data get storage minecraft:list_manual currentItem.tag.page
execute if data storage minecraft:list_auto currentItem store result score page ChestMenu run data get storage minecraft:list_auto currentItem.tag.page

execute if score selection ChestMenu matches 0 if score page ChestMenu matches 3 run scoreboard players set @s ChestMenu 3
execute if score selection ChestMenu matches 0 if score page ChestMenu matches 4 run scoreboard players set @s ChestMenu 4
execute if score selection ChestMenu matches 4 run function end-practice:chest_menu/pages/list_edit/options/remove_slot
execute if score selection ChestMenu matches 5 run function end-practice:chest_menu/pages/list_edit/options/load_slot
execute if score selection ChestMenu matches 6 run function end-practice:chest_menu/pages/list_edit/options/export_slot

scoreboard players reset selection ChestMenu
