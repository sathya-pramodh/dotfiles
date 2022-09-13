function end-practice:chest_menu/get_page
function end-practice:chest_menu/get_selection

execute at @s run playsound minecraft:ui.button.click ambient @s

execute if score @s ChestMenu matches 0 run function end-practice:chest_menu/pages/one_cycle_practice/directory
execute if score @s ChestMenu matches 1 run function end-practice:chest_menu/pages/perch_practice/directory
execute if score @s ChestMenu matches 2 run function end-practice:chest_menu/pages/list_edit/directory
execute if score @s ChestMenu matches 3 run function end-practice:chest_menu/pages/list_auto/directory
execute if score @s ChestMenu matches 4 run function end-practice:chest_menu/pages/list_manual/directory

function end-practice:chest_menu/update
clear @s #chest_menu{isMenu:1b}