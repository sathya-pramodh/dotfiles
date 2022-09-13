scoreboard players operation miliseconds timer = difference timer
scoreboard players operation miliseconds timer *= #100 timer
scoreboard players operation miliseconds timer /= #20 timer
scoreboard players operation miliseconds timer %= #100 timer

data remove storage minecraft:timer ms
data modify storage minecraft:timer ms insert 0 value 0
data modify storage minecraft:timer ms insert 1 value 0

execute if score miliseconds timer >= #10 timer run data remove storage minecraft:timer ms[1]
execute store result storage minecraft:timer ms[-1] int 1 run scoreboard players get miliseconds timer