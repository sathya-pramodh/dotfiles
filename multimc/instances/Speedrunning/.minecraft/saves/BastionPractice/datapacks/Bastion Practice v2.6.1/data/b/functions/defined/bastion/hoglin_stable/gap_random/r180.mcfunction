scoreboard players set max rng 2
function b:utils/rng/new_int

execute if score out rng matches 1 run function b:structures/bastion/hoglin_stable/walls/side_wall_0/r180
execute if score out rng matches 2 run function b:structures/bastion/hoglin_stable/walls/side_wall_1/r180
