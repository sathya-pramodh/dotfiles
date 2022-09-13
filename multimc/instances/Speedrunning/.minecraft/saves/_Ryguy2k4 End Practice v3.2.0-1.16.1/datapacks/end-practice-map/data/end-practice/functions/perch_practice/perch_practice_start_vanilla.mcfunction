scoreboard players set mode Settings 2
gamemode survival @p

function end-practice:perch_practice/perch_practice_spawn
function end-practice:perch_practice/perch_practice_loadout

# Load health display
execute if score healthDisplay Settings matches 0 run scoreboard objectives setdisplay sidebar
execute if score healthDisplay Settings matches 1 run scoreboard objectives setdisplay sidebar EnderDragon

# Reset time
scoreboard players set minute Time 0
scoreboard players set second Time 5
scoreboard players set tick Time 0
scoreboard players set totalTicks Time 0

# Get rid of fire in fountain
setblock 1 62 -1 air
setblock -1 62 1 air