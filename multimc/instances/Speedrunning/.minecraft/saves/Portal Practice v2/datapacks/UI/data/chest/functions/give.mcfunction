# Clearing inventory
clear @p

# Giving items
setblock 0 250 0 yellow_shulker_box

execute if score the portal matches 1 if score loadout portal matches 1 run data modify block 0 250 0 Items set from storage chest 1
execute if score the portal matches 2 if score loadout portal matches 1 run data modify block 0 250 0 Items set from storage chest 2
execute if score the portal matches 1 if score loadout portal matches 4 run data modify block 0 250 0 Items set from storage chest 3
execute if score the portal matches 1 if score loadout portal matches 2 run data modify block 0 250 0 Items set from storage chest 4
execute if score the portal matches 7..10 run data modify block 0 250 0 Items set from storage chest 5
execute if score the portal matches 4 run data modify block 0 250 0 Items set from storage chest 6
execute if score the portal matches 6 run data modify block 0 250 0 Items set from storage chest 7
execute if score the portal matches 1 if score loadout portal matches 3 run data modify block 0 250 0 Items set from storage chest 8
execute if score the portal matches 11.. run data modify block 0 250 0 Items set from storage chest 9
execute if score the portal matches 5 run data modify block 0 250 0 Items set from storage chest 10
execute if score the portal matches 1 if score loadout portal matches 5 run data modify block 0 250 0 Items set from storage chest 11

execute at @p run loot give @p mine 0 250 0 minecraft:air{drop_contents: 1b}

setblock 0 250 0 air

# Removing glass and random items
clear @p light_gray_stained_glass_pane