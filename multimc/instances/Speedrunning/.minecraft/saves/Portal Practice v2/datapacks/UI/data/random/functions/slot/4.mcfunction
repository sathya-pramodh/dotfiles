scoreboard players remove ruined random 1
scoreboard players operation ruined random *= -1 num

execute if score ruined random matches 1 run scoreboard players add current random 1
execute if score ruined random matches 0 run scoreboard players remove current random 1