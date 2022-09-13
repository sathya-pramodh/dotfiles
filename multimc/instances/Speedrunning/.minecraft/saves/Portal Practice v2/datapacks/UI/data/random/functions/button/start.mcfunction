# Determines if player gets rocket after starting
scoreboard players set rocket random 1

# Killing eggs
schedule function general:esc/item 5t
kill @e[type=firework_rocket]
execute at @p run setblock ~ ~ ~ air
# Purely for the end portal
schedule function random:button/fill 2t

# Resetting tickers
function random:button/remove

# Storing random number into temp random
scoreboard players operation mod rand = current random
function general:rand/num
scoreboard players operation num random = num rand
scoreboard players operation temp random = num random

# Setting proper redstone block

execute if score lava random matches 1 run function random:button/portals/lava

execute if score lava2 random matches 1 run function random:button/portals/lava2

execute if score end random matches 1 run function random:button/portals/end

execute if score wood random matches 1 run function random:button/portals/wood

execute if score cave random matches 1 run function random:button/portals/cave

execute if score L random matches 1 run function random:button/portals/l

execute if score ironless random matches 1 run function random:button/portals/ironless

execute if score 2x1 random matches 1 run function random:button/portals/2x1

execute if score ravine random matches 1 run function random:button/portals/ravine

execute if score blind random matches 1 run function random:button/portals/blind

execute if score ruined random matches 1 run function random:button/portals/ruined

execute if score nether random matches 1 run function random:button/portals/nether

# Starting tick
scoreboard players set button tick 1
function random:button/tick

# Clearing other tickers
schedule function random:button/remove 10t