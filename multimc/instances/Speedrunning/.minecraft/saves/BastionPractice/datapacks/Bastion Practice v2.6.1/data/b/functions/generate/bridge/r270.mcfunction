scoreboard players set branch bastiongen 1
execute align xyz positioned ~0.5 ~ ~0.5 run function b:structures/bastion/bridge/starting_pieces/entrance_base/r270
execute align xyz positioned ~0.5 ~ ~0.5 run function b:defined/bastion/bridge/spawnpoints/r270
title @s actionbar {"text":"Generated Bridge Bastion","color":"gold"}
scoreboard players set branch bastiongen 0