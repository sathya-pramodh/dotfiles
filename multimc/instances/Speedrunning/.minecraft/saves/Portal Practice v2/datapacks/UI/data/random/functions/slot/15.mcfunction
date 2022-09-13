scoreboard players remove ravine random 1
scoreboard players operation ravine random *= -1 num

execute if score ravine random matches 1 run scoreboard players add current random 1
execute if score ravine random matches 0 run scoreboard players remove current random 1