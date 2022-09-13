# Getting random number
scoreboard players set mod rand 217
function general:rand/num
scoreboard players operation rand r_cave = num rand
# Copying data over
data modify storage main copy set from storage main cave

# Loop
function cave:tp/random/loop