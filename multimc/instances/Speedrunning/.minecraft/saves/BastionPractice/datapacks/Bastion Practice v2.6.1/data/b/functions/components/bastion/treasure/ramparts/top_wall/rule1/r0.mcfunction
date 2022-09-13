execute if score random_gold settings matches 1 run setblock ~ ~ ~ structure_block{mode: "LOAD", rotation: "NONE", integrity: 0.3f, name: "b:bastion/treasure/ramparts/top_wall/rule1"}
function b:utils/update_jigsaw_seed
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ air
setblock ~ ~1 ~ air