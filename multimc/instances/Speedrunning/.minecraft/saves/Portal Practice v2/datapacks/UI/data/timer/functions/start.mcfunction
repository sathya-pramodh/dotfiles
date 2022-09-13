# Resetting things
function timer:reset

# Time variables
scoreboard players set time tick 1
scoreboard players set start time 0

## Displays PB on actionbar
execute unless score @e[tag=data,sort=nearest,limit=1] Minute matches 9999 run function timer:display/start

## Starting it up
function timer:tick