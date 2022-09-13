# Tp
clear @p
kill @e[type=item]
gamemode adventure @p
tp @p -21 50 0 0 0

# Tick
scoreboard players set cave tick 0

# Default loadout
scoreboard players set loadout portal 1

# Setting up proper armor stands
function armor:rooms/caves

# Removing timer entity cloud
kill @e[tag=timer]

# Starting and resetting
function chest:base
function chest:start
function random:start
function timer:reset
