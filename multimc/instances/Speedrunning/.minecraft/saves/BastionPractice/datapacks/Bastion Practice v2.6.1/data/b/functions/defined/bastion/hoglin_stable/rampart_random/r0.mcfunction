scoreboard players set max rng 3
function b:utils/rng/new_int

execute if score out rng matches 1 run function b:structures/bastion/hoglin_stable/ramparts/ramparts_1/r0
execute if score out rng matches 2 run function b:structures/bastion/hoglin_stable/ramparts/ramparts_2/r0
execute if score out rng matches 3 run function b:structures/bastion/hoglin_stable/ramparts/ramparts_3/r0
