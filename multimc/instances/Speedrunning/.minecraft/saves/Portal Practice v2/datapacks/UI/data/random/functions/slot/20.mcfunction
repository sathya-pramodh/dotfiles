scoreboard players remove lava random 1
scoreboard players operation lava random *= -1 num

execute if score lava random matches 1 run scoreboard players add current random 1
execute if score lava random matches 0 run scoreboard players remove current random 1