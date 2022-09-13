# This should probably be in a seperation function that checks if temp random matches 0
scoreboard players set mod rand 8
function general:rand/num
execute if score num rand matches 0 if score temp random matches 0 run setblock -57 61 24 redstone_block
execute if score num rand matches 1 if score temp random matches 0 run setblock -57 61 -4 redstone_block
execute if score num rand matches 2 if score temp random matches 0 run setblock -85 61 24 redstone_block
execute if score num rand matches 3 if score temp random matches 0 run setblock -85 61 -4 redstone_block
execute if score num rand matches 4 if score temp random matches 0 run setblock -113 61 24 redstone_block
execute if score num rand matches 5 if score temp random matches 0 run setblock -113 61 -4 redstone_block
execute if score num rand matches 6 if score temp random matches 0 run setblock -141 61 24 redstone_block
execute if score num rand matches 7 if score temp random matches 0 run setblock -141 61 -4 redstone_block
scoreboard players remove temp random 1