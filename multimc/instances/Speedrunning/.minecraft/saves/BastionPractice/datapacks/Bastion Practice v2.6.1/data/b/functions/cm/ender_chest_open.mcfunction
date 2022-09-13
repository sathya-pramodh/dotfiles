scoreboard players set @s chest_menu 0
scoreboard players reset selection chest_menu
function b:cm/update
advancement revoke @s only b:ender_chest_open