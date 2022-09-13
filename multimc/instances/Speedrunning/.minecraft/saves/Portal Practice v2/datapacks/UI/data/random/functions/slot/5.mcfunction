scoreboard players remove wood random 1
scoreboard players operation wood random *= -1 num

execute if score wood random matches 1 run scoreboard players add current random 1
execute if score wood random matches 0 run scoreboard players remove current random 1