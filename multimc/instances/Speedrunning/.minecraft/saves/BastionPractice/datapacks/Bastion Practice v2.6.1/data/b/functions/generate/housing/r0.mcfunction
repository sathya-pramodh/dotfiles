scoreboard players set branch bastiongen 1
execute align xyz positioned ~0.5 ~ ~0.5 run function b:structures/bastion/units/air_base/r0
execute align xyz positioned ~0.5 ~ ~0.5 run function b:defined/bastion/units/spawnpoints/r0
title @s actionbar {"text":"Generated Housing Bastion","color":"gold"}
scoreboard players set branch bastiongen 0