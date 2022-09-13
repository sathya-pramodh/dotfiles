scoreboard players remove nether random 1
scoreboard players operation nether random *= -1 num

execute if score nether random matches 1 run scoreboard players add current random 1
execute if score nether random matches 0 run scoreboard players remove current random 1