execute if score random_gold settings matches 1 run setblock ~ ~ ~ structure_block{mode: "LOAD", rotation: "CLOCKWISE_180", integrity: 0.029f, name: "b:bastion/treasure/ramparts/top_wall/rule0"}
function b:utils/update_jigsaw_seed
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ air
setblock ~ ~1 ~ air