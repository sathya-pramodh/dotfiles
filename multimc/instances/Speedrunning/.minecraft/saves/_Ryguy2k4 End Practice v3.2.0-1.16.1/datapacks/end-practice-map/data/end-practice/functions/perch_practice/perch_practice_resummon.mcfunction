scoreboard players set mode Settings 3
tp @p 30 100 0 90 45
gamemode survival @p

# Put end crystals in hotbar
replaceitem entity @p hotbar.0 end_crystal 1
replaceitem entity @p hotbar.1 end_crystal 1
replaceitem entity @p hotbar.2 end_crystal 1
replaceitem entity @p hotbar.3 end_crystal 1
replaceitem entity @p hotbar.4 end_crystal 1
replaceitem entity @p hotbar.5 end_crystal 1
replaceitem entity @p hotbar.6 end_crystal 1
replaceitem entity @p hotbar.7 end_crystal 1
replaceitem entity @p hotbar.8 end_crystal 1

# Create cage for player
setblock 29 100 0 minecraft:bedrock
setblock 30 100 -1 minecraft:barrier
setblock 31 100 0 minecraft:barrier
setblock 30 100 1 minecraft:barrier
setblock 30 99 0 minecraft:barrier
setblock 30 102 0 minecraft:barrier

# Put end crystals in fountain
summon minecraft:end_crystal 1 62 -1
summon minecraft:end_crystal -1 62 1