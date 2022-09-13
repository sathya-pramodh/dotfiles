scoreboard players remove 2x1 random 1
scoreboard players operation 2x1 random *= -1 num

execute if score 2x1 random matches 1 run scoreboard players add current random 1
execute if score 2x1 random matches 0 run scoreboard players remove current random 1