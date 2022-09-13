execute if entity @e[type=egg] run function cave:tp/again
execute at @p if block ~ ~ ~ nether_portal run function cave:player/portal
execute if entity @e[type=firework_rocket] run function cave:player/start

execute if score cave tick matches 1 run schedule function cave:player/tick 1t