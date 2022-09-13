scoreboard players remove end random 1
scoreboard players operation end random *= -1 num

execute if score end random matches 1 run scoreboard players add current random 1
execute if score end random matches 0 run scoreboard players remove current random 1