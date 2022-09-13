scoreboard players set max rng 3
function b:utils/rng/new_int

execute if score out rng matches 1 run function b:structures/bastion/units/ramparts/ramparts_0/r180
execute if score out rng matches 2 run function b:structures/bastion/units/ramparts/ramparts_1/r180
execute if score out rng matches 3 run function b:structures/bastion/units/ramparts/ramparts_2/r180