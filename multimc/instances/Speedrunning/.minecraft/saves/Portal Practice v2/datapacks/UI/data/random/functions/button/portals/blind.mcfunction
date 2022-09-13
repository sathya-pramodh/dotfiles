# This should probably be in a seperation function that checks if temp random matches 0
scoreboard players set mod rand 4
function general:rand/num
execute if score num rand matches 0 if score temp random matches 0 run setblock 52 61 -60 redstone_block
execute if score num rand matches 1 if score temp random matches 0 run setblock 24 61 -60 redstone_block
execute if score num rand matches 2 if score temp random matches 0 run setblock 24 61 -88 redstone_block
execute if score num rand matches 3 if score temp random matches 0 run setblock 52 61 -88 redstone_block

scoreboard players remove temp random 1