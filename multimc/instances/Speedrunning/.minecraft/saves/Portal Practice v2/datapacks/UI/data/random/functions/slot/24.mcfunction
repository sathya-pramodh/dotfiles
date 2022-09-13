scoreboard players remove cave random 1
scoreboard players operation cave random *= -1 num

execute if score cave random matches 1 run scoreboard players add current random 1
execute if score cave random matches 0 run scoreboard players remove current random 1