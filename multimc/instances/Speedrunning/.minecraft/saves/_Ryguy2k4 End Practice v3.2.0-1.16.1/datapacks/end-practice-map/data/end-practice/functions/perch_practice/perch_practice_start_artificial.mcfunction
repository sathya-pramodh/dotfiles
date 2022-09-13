scoreboard players set mode Settings 2
gamemode survival @p

function end-practice:islands/load_island
function end-practice:perch_practice/perch_practice_spawn
function end-practice:perch_practice/perch_practice_loadout

# Load bossbar
bossbar set minecraft:dragon name {"text":"Ender Dragon","color":"white","italic":false}
bossbar set minecraft:dragon color pink
bossbar set minecraft:dragon max 200
bossbar set minecraft:dragon players @a
bossbar set minecraft:dragon visible true

# Load health display
execute if score healthDisplay Settings matches 0 run scoreboard objectives setdisplay sidebar
execute if score healthDisplay Settings matches 1 run scoreboard objectives setdisplay sidebar EnderDragon

# Reset time
scoreboard players set minute Time 0
scoreboard players set second Time 5
scoreboard players set tick Time 0
scoreboard players set totalTicks Time 0

# Summon dragon
execute in the_end run function end-practice:dragon/perch_practice_summon_dragon

