scoreboard players add notches Settings 1
execute if score notches Settings matches 5.. run scoreboard players set notches Settings 0
execute if score notches Settings matches 0 run bossbar set minecraft:dragon style progress
execute if score notches Settings matches 1 run bossbar set minecraft:dragon style notched_6
execute if score notches Settings matches 2 run bossbar set minecraft:dragon style notched_10
execute if score notches Settings matches 3 run bossbar set minecraft:dragon style notched_12
execute if score notches Settings matches 4 run bossbar set minecraft:dragon style notched_20