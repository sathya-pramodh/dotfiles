# Killing firework
kill @e[type=firework_rocket]

# Teleporting
spawnpoint @p -21 50 0
tp @p -75 62 75 0 0

# Sign and teleporting
schedule function cave:player/sign 1s
schedule function cave:player/tp 10t

# Loadout
scoreboard players set the portal 20

# Clearing inventory and giving items
clear @p
gamemode survival @p
setblock 0 250 0 yellow_shulker_box
data modify block 0 250 0 Items set from storage chest 9
execute at @p run loot give @p mine 0 250 0 minecraft:air{drop_contents: 1b}
setblock 0 250 0 air
clear @p light_gray_stained_glass_pane
give @p firework_rocket

# Clearing items
schedule function general:esc/item 5t

# Removing fire effect
schedule function general:esc/creative 1t

# Starting timer
execute positioned -21 50 0 run function timer:start

# Setting customnamevisible to false
function armor:invisible

# Generating random cave
fill -61 60 60 -90 41 89 air
function cave:tp/start

# Tick
scoreboard players set cave tick 1
function cave:player/tick