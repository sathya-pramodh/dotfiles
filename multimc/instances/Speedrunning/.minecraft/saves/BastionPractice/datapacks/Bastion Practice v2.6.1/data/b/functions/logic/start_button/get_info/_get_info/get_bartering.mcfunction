execute store result score @s _bartering run data get entity @s Brain.memories.minecraft:admiring_item.ttl
execute if score @s _bartering matches 1 run scoreboard players add Barters _bartering 1