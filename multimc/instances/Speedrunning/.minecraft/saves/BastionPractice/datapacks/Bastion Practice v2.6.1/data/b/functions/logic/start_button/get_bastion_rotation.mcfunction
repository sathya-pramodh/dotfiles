# Randomly choose a rotation for the bastion
scoreboard players set max rng 4
function b:utils/rng/new_int
scoreboard players operation #bastion_rotation bastiongen = out rng