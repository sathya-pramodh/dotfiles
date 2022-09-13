## Chest UI
# A boolean to tell when they are modifying a loadout
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
scoreboard players set modify11 chest 0

# Ravine portal
execute positioned 0 49 10 run function chest:c/1/base

# Lava portal
execute positioned -10 49 4 run function chest:c/2/base

# Custom Portal
execute positioned -10 49 -2 run function chest:c/3/base

# Water Ravine
execute positioned -10 49 -6 run function chest:c/11/base

# Lava lake
execute positioned -6 49 -10 run function chest:c/4/base

# Ruined Portal
execute positioned 2 49 -10 run function chest:c/5/base

# Portal Room
execute positioned 6 49 -10 run function chest:c/6/base

# Blind
execute positioned 10 49 -6 run function chest:c/7/base

# Ironless
execute positioned 10 49 -2 run function chest:c/8/base

# Cave
execute positioned 10 49 2 run function chest:c/9/base

# Blacksmith
execute positioned 10 49 6 run function chest:c/10/base

## Random Chest UI

# Determines if player gets rocket after starting
scoreboard players set rocket random 0

# # Values
scoreboard players set total random 12
scoreboard players set current random 12


# # Portals
scoreboard players set lava random 1
scoreboard players set lava2 random 1
scoreboard players set end random 1
scoreboard players set wood random 1
scoreboard players set cave random 1

scoreboard players set L random 1
scoreboard players set ironless random 1
scoreboard players set 2x1 random 1
scoreboard players set ravine random 1

scoreboard players set blind random 1
scoreboard players set ruined random 1
scoreboard players set nether random 1
function random:base

# execute if score load portal matches 0 run schedule function general:late 1t