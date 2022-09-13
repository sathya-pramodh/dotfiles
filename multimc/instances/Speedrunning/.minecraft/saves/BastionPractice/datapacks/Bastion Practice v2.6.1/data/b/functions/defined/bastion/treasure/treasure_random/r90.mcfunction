scoreboard players set max rng 4
function b:utils/rng/new_int

execute if score out rng matches 1 run function b:structures/bastion/treasure/bases/centers/center_0/r90
execute if score out rng matches 2 run function b:structures/bastion/treasure/bases/centers/center_1/r90
execute if score out rng matches 3 run function b:structures/bastion/treasure/bases/centers/center_2/r90
execute if score out rng matches 4 run function b:structures/bastion/treasure/bases/centers/center_3/r90
