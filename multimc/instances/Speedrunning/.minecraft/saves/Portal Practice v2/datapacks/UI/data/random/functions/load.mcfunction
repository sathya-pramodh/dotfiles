# Removes all redstone tickers
function random:button/remove

# Tick
scoreboard players set random tick 0
scoreboard players set button tick 0

## For specific random variables
scoreboard objectives add random dummy

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

# Start
schedule function random:start 2t