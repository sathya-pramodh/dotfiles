# Ending tick
scoreboard players set time tick 0
scoreboard players set button tick 0
scoreboard players set magma tick 0

# Ensures player doesn't get rocket
scoreboard players set rocket random 0

# Default loadout
scoreboard players set loadout portal 1

# Setting up proper armor stands
function armor:rooms/main

# Removing timer entity cloud
kill @e[tag=timer]

# Starting and resetting
function chest:base
function chest:start
function random:start
function timer:reset

 