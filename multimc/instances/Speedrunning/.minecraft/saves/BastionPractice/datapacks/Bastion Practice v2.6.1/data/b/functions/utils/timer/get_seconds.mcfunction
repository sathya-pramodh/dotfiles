scoreboard players operation seconds timer = difference timer
scoreboard players operation seconds timer /= #20 timer
scoreboard players operation seconds timer %= #60 timer

data remove storage minecraft:timer s
data modify storage minecraft:timer s insert 0 value 0
data modify storage minecraft:timer s insert 1 value 0

execute if score seconds timer >= #10 timer run data remove storage minecraft:timer s[1]
execute store result storage minecraft:timer s[-1] int 1 run scoreboard players get seconds timer