scoreboard players set mode Settings 4
scoreboard players set summonTime Time 620
setblock 29 100 0 minecraft:barrier
execute in minecraft:the_end positioned 29 101 0 run kill @e[type=end_crystal,distance=..5]
gamemode adventure @p
clear @p