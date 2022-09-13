##  Starting or Resetting time
# Ravine portal
execute unless score start time matches 1 if score the portal matches 1 at @p if entity @p[y=0,dy=15] run function timer:time_start
# Z Portals
execute store result score pz time run data get entity @p Pos[2]
execute unless score start time matches 1 if score the portal matches 2..19 unless score the portal matches 4 if score pz time > z time run function timer:time_start
# X Portals ( End Portal )
execute store result score px time run data get entity @p Pos[0]
execute unless score start time matches 1 if score the portal matches 4 if score px time < x time run function timer:time_start
# Random Portal
execute unless score start time matches 1 if score the portal matches 20 unless score px time matches -75 run function timer:time_start
execute unless score start time matches 1 if score the portal matches 20 unless score pz time matches 75 run function timer:time_start

# Adding time
execute if score start time matches 1 run function timer:add/tick


# Resetting if egg if thrown
execute at @p if block ~ ~ ~ nether_portal run scoreboard players set time tick 0

# Ticking
execute if score time tick matches 1 run schedule function timer:tick 1t

# To clear actionbar
execute if score time tick matches 0 run title @a actionbar {"text":"Leaving..."}