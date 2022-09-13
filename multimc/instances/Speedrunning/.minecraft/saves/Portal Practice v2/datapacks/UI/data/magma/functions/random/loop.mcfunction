scoreboard players add count magma 1

data modify storage magma formation append value 0
execute if predicate magma:40 run data modify storage magma formation append value 1

execute if score count magma matches ..41 run function magma:random/loop
execute if score count magma matches 42.. run setblock -51 61 38 minecraft:redstone_block
