# when an item is selected
execute if score selection ChestMenu matches 1 run function end-practice:chest_menu/pages/perch_practice/options/spawn
execute if score selection ChestMenu matches 2 run function end-practice:chest_menu/pages/perch_practice/options/start_node
execute if score selection ChestMenu matches 3 run function end-practice:chest_menu/pages/perch_practice/options/island
execute if score selection ChestMenu matches 4 run function end-practice:chest_menu/pages/perch_practice/options/fight_type
execute if score selection ChestMenu matches 6 run function end-practice:chest_menu/pages/perch_practice/options/perch_practice_loadout
execute if score selection ChestMenu matches 7 run function end-practice:chest_menu/pages/perch_practice/options/enderman
execute if score selection ChestMenu matches 8 run function end-practice:chest_menu/pages/perch_practice/options/auto_perch
execute if score selection ChestMenu matches 9 run function end-practice:chest_menu/pages/perch_practice/options/phase_display

scoreboard players reset selection ChestMenu