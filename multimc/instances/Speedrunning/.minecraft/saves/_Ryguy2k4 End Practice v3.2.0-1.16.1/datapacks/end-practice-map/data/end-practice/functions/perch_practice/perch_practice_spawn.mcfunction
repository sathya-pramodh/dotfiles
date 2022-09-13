# Teleport player to their spawn location based on their setting and the end island
execute in minecraft:the_end if score island rng matches 0 if score spawn Settings matches 0 run tp @p 100 49 0 90 0
execute in minecraft:the_end if score island rng matches 0 if score spawn Settings matches 1 run tp @p 100 55 0 90 10

execute in minecraft:the_end if score island rng matches 1 if score spawn Settings matches 0 run tp @p 100 49 0 90 0
execute in minecraft:the_end if score island rng matches 1 if score spawn Settings matches 1 run tp @p 95 56 0 90 10

execute in minecraft:the_end if score island rng matches 2 if score spawn Settings matches 0 run tp @p 100 52 0 90 0
execute in minecraft:the_end if score island rng matches 2 if score spawn Settings matches 1 run tp @p 100 60 0 90 10

execute in minecraft:the_end if score island rng matches 3 if score spawn Settings matches 0 run tp @p 100 49 0 90 0
execute in minecraft:the_end if score island rng matches 3 if score spawn Settings matches 1 run tp @p 95 57 0 90 10

execute in minecraft:the_end if score island rng matches 4 if score spawn Settings matches 0 run tp @p 100 49 0 90 0
execute in minecraft:the_end if score island rng matches 4 if score spawn Settings matches 1 run tp @p 94 57 0 90 10