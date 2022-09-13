scoreboard players set max rng 2
function b:utils/rng/new_int

execute if score out rng matches 1 positioned ~1 ~-22 ~0 run function b:structures/bastion/bridge/legs/leg_0/r90
execute if score out rng matches 2 positioned ~1 ~-22 ~0 run function b:structures/bastion/bridge/legs/leg_1/r90
