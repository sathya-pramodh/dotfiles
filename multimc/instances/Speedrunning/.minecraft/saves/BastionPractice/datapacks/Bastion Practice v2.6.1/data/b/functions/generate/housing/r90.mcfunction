scoreboard players set branch bastiongen 1
execute align xyz positioned ~0.5 ~ ~0.5 run function b:structures/bastion/units/air_base/r90
execute align xyz positioned ~0.5 ~ ~0.5 run function b:defined/bastion/units/spawnpoints/r90
title @s actionbar {"text":"Generated Housing Bastion","color":"gold"}
scoreboard players set branch bastiongen 0