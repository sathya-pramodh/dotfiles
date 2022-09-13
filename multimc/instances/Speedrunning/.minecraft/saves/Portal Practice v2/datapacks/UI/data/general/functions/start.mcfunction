# Giving player items
function chest:give
execute if score rocket random matches 1 run give @p firework_rocket

# Sets loadouts back
scoreboard players set modify1 chest 0
scoreboard players set modify2 chest 0
scoreboard players set modify3 chest 0
scoreboard players set modify4 chest 0
scoreboard players set modify5 chest 0
scoreboard players set modify6 chest 0
scoreboard players set modify7 chest 0
scoreboard players set modify8 chest 0
scoreboard players set modify9 chest 0
scoreboard players set modify10 chest 0

## Replaces items
# Ravine
execute positioned 0 49 10 run function chest:c/1/item
# Lava portals
execute positioned -10 49 4 run function chest:c/2/item
execute positioned -10 49 -4 run function chest:c/3/item
# Lava lake
execute positioned -6 49 -10 run function chest:c/4/item
# Ruined Portal
execute positioned 2 49 -10 run function chest:c/5/item
# Portal Room
execute positioned 6 49 -10 run function chest:c/6/item
# Blind
execute positioned 10 49 -6 run function chest:c/7/item
# Ironless
execute positioned 10 49 -2 run function chest:c/8/item
# Cave
execute positioned 10 49 2 run function chest:c/9/item
# Blacksmith
execute positioned 10 49 6 run function chest:c/10/item 

## Position based upon different portals
# Ravine
execute if score the portal matches 1..2 run tp @p ~7 ~-47 ~0 0 0
execute if score the portal matches 1 if score loadout portal matches 2..3 at @p run tp @p ~ ~ ~-12
# End portal
execute if score the portal matches 4 run tp @p ~23 ~-48 ~13 90 0 
# Blacksmith
execute if score the portal matches 5 run tp @p ~8 ~-54 ~-15 0 0
# Blind portal
execute if score the portal matches 6 run tp @p ~-10 ~-52 ~-21 0 0

# Ruined Portal
execute if score the portal matches 7 run tp @p ~-7 ~-52 ~1 0 0
execute if score the portal matches 8 run tp @p ~-9 ~-52 ~1 0 0
execute if score the portal matches 9 run tp @p ~-10 ~-55 ~1 0 0
execute if score the portal matches 10 run tp @p ~10 ~-62 ~1 0 0

# Cave portal
execute if score the portal matches 11 run tp @p ~-8 ~-51 ~-20 0 0
execute if score the portal matches 12 run tp @p ~-9 ~-52 ~-20 0 0
execute if score the portal matches 13 run tp @p ~-9 ~-51 ~-20 0 0
execute if score the portal matches 14 run tp @p ~-5 ~-51 ~-20 0 0
execute if score the portal matches 15 run tp @p ~-13 ~-52 ~-20 0 0
execute if score the portal matches 16 run tp @p ~-9 ~-52 ~-20 0 0
execute if score the portal matches 17 run tp @p ~-12 ~-52 ~-20 0 0
execute if score the portal matches 18 run tp @p ~-13 ~-52 ~-20 0 0

execute at @p run spawnpoint @p ~ ~ ~
execute store result score z time run data get entity @p Pos[2]
execute store result score x time run data get entity @p Pos[0]

# Clearing items
schedule function general:esc/item 5t

# Removing fire effect
schedule function general:esc/creative 1t

# Stopping others
scoreboard players set chest tick 0
scoreboard players set random tick 0

# Starting timer
function timer:start

# Setting customnamevisible to false
function armor:invisible


# Ensuring a data cloud is already there
execute positioned ~ ~ ~ unless entity @e[tag=data,distance=..2] run function timer:save/new