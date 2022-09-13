# This should probably be in a seperation function that checks if temp random matches 0
execute if score temp random matches 0 run function magma:random/start
scoreboard players remove temp random 1