scoreboard players set max rng 4
function b:utils/rng/new_int
scoreboard players operation #bastion_id bastiongen = out rng
scoreboard players remove #bastion_id bastiongen 1