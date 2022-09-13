# Generate the bastion at the height specified by terrain
gamerule doTileDrops false
execute if score terrain settings matches 0 positioned ~ 127 ~ run function b:logic/start_button/generate_bastion/specified
execute if score terrain settings matches 1 positioned ~ 32 ~ run function b:logic/start_button/generate_bastion/specified
gamerule doTileDrops true