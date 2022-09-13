scoreboard players set max rng 2
function b:utils/rng/new_int

execute if score out rng matches 1 positioned ~0 ~-22 ~1 run function b:structures/bastion/bridge/legs/leg_0/r180
execute if score out rng matches 2 positioned ~0 ~-22 ~1 run function b:structures/bastion/bridge/legs/leg_1/r180
