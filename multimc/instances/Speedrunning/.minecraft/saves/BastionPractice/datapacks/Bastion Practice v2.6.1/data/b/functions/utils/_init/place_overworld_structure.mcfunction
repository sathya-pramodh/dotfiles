execute in overworld unless block 0 128 0 black_concrete run setblock 0 128 0 structure_block{ignoreEntities:0b,mode:"LOAD",name:"b:overworld"}
execute in overworld unless block 0 128 0 black_concrete run setblock 0 129 0 redstone_block
execute in overworld unless block 0 128 0 black_concrete run schedule function b:utils/_init/place_overworld_structure 1t