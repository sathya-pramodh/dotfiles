function end-practice:chest_menu/clear_ender_chest

execute if score @s ChestMenu matches 0 run function end-practice:chest_menu/pages/one_cycle_practice/items
execute if score @s ChestMenu matches 1 run function end-practice:chest_menu/pages/perch_practice/items
execute if score @s ChestMenu matches 2 run function end-practice:chest_menu/pages/list_edit/items
execute if score @s ChestMenu matches 3 run function end-practice:chest_menu/pages/list_auto/items
execute if score @s ChestMenu matches 4 run function end-practice:chest_menu/pages/list_manual/items