scoreboard players operation minutes timer = difference timer
scoreboard players operation minutes timer /= #1200 timer

data remove storage minecraft:timer m
data modify storage minecraft:timer m insert 0 value 0
data modify storage minecraft:timer m insert 1 value 0

execute if score minutes timer >= #10 timer run data remove storage minecraft:timer s[1]
execute store result storage minecraft:timer m[-1] int 1 run scoreboard players get minutes timer