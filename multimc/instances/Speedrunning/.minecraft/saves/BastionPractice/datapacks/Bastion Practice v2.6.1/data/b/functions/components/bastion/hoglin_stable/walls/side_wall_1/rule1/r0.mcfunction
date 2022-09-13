execute if score random_gold settings matches 1 run setblock ~ ~ ~ structure_block{mode: "LOAD", rotation: "NONE", integrity: 0.1f, name: "b:bastion/hoglin_stable/walls/side_wall_1/rule1"}
function b:utils/update_jigsaw_seed
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ air
setblock ~ ~1 ~ air