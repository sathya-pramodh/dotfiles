function b:cm/get_page
function b:cm/get_selection

execute at @s run playsound minecraft:ui.button.click ambient @s

execute if score @s chest_menu matches 0 run function b:cm/pages/global/directory
execute if score @s chest_menu matches 1 run function b:cm/pages/bastion/directory

function b:cm/update
clear @s #cm{isMenu:1b}