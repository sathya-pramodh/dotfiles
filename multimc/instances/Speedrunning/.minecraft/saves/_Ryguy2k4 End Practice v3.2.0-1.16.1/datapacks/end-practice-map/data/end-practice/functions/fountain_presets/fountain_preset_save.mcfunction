gamemode adventure @p
tp @p 90 26 1 0 0
execute at @p if entity @p[tag=editor] run playsound minecraft:block.anvil.use ambient @p

# Activate structure blocks
setblock 56 21 11 minecraft:redstone_block
setblock 56 21 11 air
setblock 56 21 -9 minecraft:redstone_block
setblock 56 21 -9 air
setblock 56 21 -29 minecraft:redstone_block
setblock 56 21 -29 air

tag @e remove north
tag @e remove east
tag @e remove south
tag @e remove west

execute positioned 65 23 20 if entity @e[type=minecraft:armor_stand,distance=..10] if score f1pfacing Settings matches 0 run tag @e[type=minecraft:armor_stand,distance=..10] add north
execute positioned 65 23 20 if entity @e[type=minecraft:armor_stand,distance=..10] if score f1pfacing Settings matches 1 run tag @e[type=minecraft:armor_stand,distance=..10] add east
execute positioned 65 23 20 if entity @e[type=minecraft:armor_stand,distance=..10] if score f1pfacing Settings matches 2 run tag @e[type=minecraft:armor_stand,distance=..10] add south
execute positioned 65 23 20 if entity @e[type=minecraft:armor_stand,distance=..10] if score f1pfacing Settings matches 3 run tag @e[type=minecraft:armor_stand,distance=..10] add west

execute positioned 65 23 0 if entity @e[type=minecraft:armor_stand,distance=..10] if score f2pfacing Settings matches 0 run tag @e[type=minecraft:armor_stand,distance=..10] add north
execute positioned 65 23 0 if entity @e[type=minecraft:armor_stand,distance=..10] if score f2pfacing Settings matches 1 run tag @e[type=minecraft:armor_stand,distance=..10] add east
execute positioned 65 23 0 if entity @e[type=minecraft:armor_stand,distance=..10] if score f2pfacing Settings matches 2 run tag @e[type=minecraft:armor_stand,distance=..10] add south
execute positioned 65 23 0 if entity @e[type=minecraft:armor_stand,distance=..10] if score f2pfacing Settings matches 3 run tag @e[type=minecraft:armor_stand,distance=..10] add west

execute positioned 65 23 -20 if entity @e[type=minecraft:armor_stand,distance=..10] if score f3pfacing Settings matches 0 run tag @e[type=minecraft:armor_stand,distance=..10] add north
execute positioned 65 23 -20 if entity @e[type=minecraft:armor_stand,distance=..10] if score f3pfacing Settings matches 1 run tag @e[type=minecraft:armor_stand,distance=..10] add east
execute positioned 65 23 -20 if entity @e[type=minecraft:armor_stand,distance=..10] if score f3pfacing Settings matches 2 run tag @e[type=minecraft:armor_stand,distance=..10] add south
execute positioned 65 23 -20 if entity @e[type=minecraft:armor_stand,distance=..10] if score f3pfacing Settings matches 3 run tag @e[type=minecraft:armor_stand,distance=..10] add west

