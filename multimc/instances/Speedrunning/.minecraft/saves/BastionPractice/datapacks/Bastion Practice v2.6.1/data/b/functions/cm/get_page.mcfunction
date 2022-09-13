scoreboard players set #bool chest_menu 0

execute store success score #bool chest_menu run clear @s #cm{page:0} 0
execute if score #bool chest_menu matches 1 run scoreboard players set @s chest_menu 0
execute store success score #bool chest_menu run clear @s #cm{page:1} 0
execute if score #bool chest_menu matches 1 run scoreboard players set @s chest_menu 1