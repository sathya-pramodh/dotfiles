execute if score random_gold settings matches 1 run setblock ~ ~ ~ structure_block{mode: "LOAD", rotation: "CLOCKWISE_90", integrity: 0.6f, name: "b:bastion/bridge/starting_pieces/entrance/rule1"}
function b:utils/update_jigsaw_seed
setblock ~ ~1 ~ redstone_block
setblock ~ ~ ~ air
setblock ~ ~1 ~ air