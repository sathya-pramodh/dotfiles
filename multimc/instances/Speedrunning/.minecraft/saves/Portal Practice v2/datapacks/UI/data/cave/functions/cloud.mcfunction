# Spreading
spreadplayers 0 0 1 100000 under 16 false @s

scoreboard players set pred r_cave 0
execute at @s if predicate cave:lava run scoreboard players set pred r_cave 1

execute if score pred r_cave matches 1 as @s run function cave:save
execute if score pred r_cave matches 0 run function cave:start