scoreboard players remove lava2 random 1
scoreboard players operation lava2 random *= -1 num

execute if score lava2 random matches 1 run scoreboard players add current random 1
execute if score lava2 random matches 0 run scoreboard players remove current random 1