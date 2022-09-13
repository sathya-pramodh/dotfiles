# Saving old values
execute if score rand magma matches 0 run data modify storage magma old set from storage magma formation
# Random number 0-5
scoreboard players set mod rand 6
function general:rand/num

# Setting to lava magma and adding 1
scoreboard players operation lava magma = num rand
scoreboard players add lava magma 1

# Setting count to 0
scoreboard players set count magma 0
scoreboard players set rand magma 1

function magma:random/loop