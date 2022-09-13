# This should probably be in a seperation function that checks if temp random matches 0
scoreboard players set mod rand 8
function general:rand/num
execute if score num rand matches 0 if score temp random matches 0 run setblock -54 61 -72 redstone_block
execute if score num rand matches 1 if score temp random matches 0 run setblock -79 61 -69 redstone_block
execute if score num rand matches 2 if score temp random matches 0 run setblock -79 64 -96 redstone_block
execute if score num rand matches 3 if score temp random matches 0 run setblock -79 66 -118 redstone_block
execute if score num rand matches 4 if score temp random matches 0 run setblock -79 61 -140 redstone_block
execute if score num rand matches 5 if score temp random matches 0 run setblock -71 72 -159 redstone_block
execute if score num rand matches 6 if score temp random matches 0 run setblock -71 72 -130 redstone_block
execute if score num rand matches 7 if score temp random matches 0 run setblock -71 71 -101 redstone_block
scoreboard players remove temp random 1