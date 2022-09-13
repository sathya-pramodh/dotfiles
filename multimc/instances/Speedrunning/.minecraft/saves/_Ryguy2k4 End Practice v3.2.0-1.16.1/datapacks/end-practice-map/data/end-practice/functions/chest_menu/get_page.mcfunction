scoreboard players set bool ChestMenu 0

execute store success score bool ChestMenu run clear @s #chest_menu{page:0} 0
execute if score bool ChestMenu matches 1 run scoreboard players set @s ChestMenu 0
execute store success score bool ChestMenu run clear @s #chest_menu{page:1} 0
execute if score bool ChestMenu matches 1 run scoreboard players set @s ChestMenu 1
execute store success score bool ChestMenu run clear @s #chest_menu{page:2} 0
execute if score bool ChestMenu matches 1 run scoreboard players set @s ChestMenu 2
execute store success score bool ChestMenu run clear @s #chest_menu{page:3} 0
execute if score bool ChestMenu matches 1 run scoreboard players set @s ChestMenu 3
execute store success score bool ChestMenu run clear @s #chest_menu{page:4} 0
execute if score bool ChestMenu matches 1 run scoreboard players set @s ChestMenu 4

