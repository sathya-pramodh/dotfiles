scoreboard players remove ironless random 1
scoreboard players operation ironless random *= -1 num

execute if score ironless random matches 1 run scoreboard players add current random 1
execute if score ironless random matches 0 run scoreboard players remove current random 1