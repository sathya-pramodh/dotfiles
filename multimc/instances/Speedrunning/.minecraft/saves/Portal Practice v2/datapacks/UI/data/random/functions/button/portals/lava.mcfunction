# This should probably be in a seperation function that checks if temp random matches 0
scoreboard players set mod rand 2
function general:rand/num
execute if score num rand matches 0 if score temp random matches 0 run setblock -31 61 18 redstone_block
execute if score num rand matches 0 if score temp random matches 0 positioned -9 51.5 6 run function sign:start

execute if score num rand matches 1 if score temp random matches 0 run setblock -31 61 38 redstone_block
execute if score num rand matches 1 if score temp random matches 0 positioned -9 51.5 2 run function sign:start
scoreboard players remove temp random 1