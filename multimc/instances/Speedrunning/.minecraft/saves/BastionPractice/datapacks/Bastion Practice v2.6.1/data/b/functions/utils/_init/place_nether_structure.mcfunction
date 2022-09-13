execute in the_nether unless block 0 128 0 netherrack run setblock 0 128 0 structure_block{ignoreEntities:0b,mode:"LOAD",name:"b:nether"}
execute in the_nether unless block 0 128 0 netherrack run setblock 0 129 0 redstone_block

function b:logic/prev_run_info/update_display

execute in the_nether unless block 0 128 0 netherrack run schedule function b:utils/_init/place_nether_structure 1t