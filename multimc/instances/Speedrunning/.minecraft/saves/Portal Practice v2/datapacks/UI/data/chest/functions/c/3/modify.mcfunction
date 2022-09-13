# Clearing inventory
clear @p

# Removing chest, so they will be kicked out
setblock ~ ~ ~ air
setblock ~ ~ ~ chest

# Setting gamemode
gamemode creative @p

# Giving items
setblock 0 0 0 yellow_shulker_box

data modify block 0 0 0 Items set from storage chest 3

execute at @p run loot give @p mine 0 0 0 minecraft:air{drop_contents: 1b}

setblock 0 0 0 air

# Removing glass
clear @p light_gray_stained_glass_pane