# If playing uses firework, new random
execute if entity @e[limit=1,type=egg] run function random:button/continue
execute if entity @e[limit=1,type=firework_rocket] run function random:button/start
execute if entity @p[nbt={Dimension:"minecraft:the_end"}] in minecraft:overworld run tp @p -38 62 -39
execute at @p if block ~ ~ ~ nether_portal run function random:button/save

execute if score button tick matches 1 run schedule function random:button/tick 1t