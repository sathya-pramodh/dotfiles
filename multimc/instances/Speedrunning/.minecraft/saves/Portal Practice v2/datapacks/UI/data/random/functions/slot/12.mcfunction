scoreboard players remove L random 1
scoreboard players operation L random *= -1 num

execute if score L random matches 1 run scoreboard players add current random 1
execute if score L random matches 0 run scoreboard players remove current random 1