scoreboard players set branch bastiongen 1
execute align xyz positioned ~0.5 ~ ~0.5 run function b:structures/bastion/treasure/big_air_full/r180
execute align xyz positioned ~0.5 ~ ~0.5 run function b:defined/bastion/treasure/spawnpoints/r180
title @s actionbar {"text":"Generated Treasure Bastion","color":"gold"}
scoreboard players set branch bastiongen 0