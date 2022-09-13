# Gamerule
gamerule doMobSpawning false
gamerule doFireTick false
gamerule doDaylightCycle false
gamerule sendCommandFeedback false
gamerule doImmediateRespawn true
time set day

# This only runs once
scoreboard players set load portal 1

# Resetting temp variables
scoreboard objectives remove temp
scoreboard objectives add temp dummy

# Adding tick to check functions that are ticking
scoreboard objectives add tick dummy

# Numbers
scoreboard objectives add num dummy
scoreboard players set -1 num -1

# Turning off sidebar
scoreboard objectives setdisplay sidebar

# Portal stuff
scoreboard objectives add portal dummy
scoreboard players set loadout portal 1
scoreboard players set spawn portal 0

# Random
scoreboard objectives add rand dummy
scoreboard players set mod rand 10

# Display
kill @e[tag=time]
kill @e[tag=sign]
kill @e[tag=ruined]
kill @e[tag=cave]
kill @e[tag=blind]

# Player
tp @p 0 50 0 0 0
gamemode adventure @p

# Ensures title doesn't stick around for too long
title @a reset
title @a times 10 40 20

# Specific load functions
function chest:load
function timer:load
function random:load
function armor:load