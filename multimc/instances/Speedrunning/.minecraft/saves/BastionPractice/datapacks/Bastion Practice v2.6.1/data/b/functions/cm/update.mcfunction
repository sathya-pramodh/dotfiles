function b:cm/clear_ender_chest

execute if score @s chest_menu matches 0 run function b:cm/pages/global/items
execute if score @s chest_menu matches 1 run function b:cm/pages/bastion/items