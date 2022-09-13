# Re-loading old values
execute if score rand magma matches 1 run function magma:random/new

# Bool magma for obi/magma detection
scoreboard players set bool magma 0

# Second Half
execute unless data block ~ ~ ~ Items[{Slot:0b}] run function magma:ui/lava/remove
execute unless data block ~ ~ ~ Items[{Slot:1b}] run function magma:ui/left/1
execute unless data block ~ ~ ~ Items[{Slot:2b}] run function magma:ui/left/2
execute unless data block ~ ~ ~ Items[{Slot:3b}] run function magma:ui/left/3
execute unless data block ~ ~ ~ Items[{Slot:4b}] run function magma:ui/left/4
execute unless data block ~ ~ ~ Items[{Slot:5b}] run function magma:ui/left/5
execute unless data block ~ ~ ~ Items[{Slot:6b}] run function magma:ui/left/6
execute unless data block ~ ~ ~ Items[{Slot:7b}] run function magma:ui/left/7

execute unless data block ~ ~ ~ Items[{Slot:10b}] run function magma:ui/left/10
execute unless data block ~ ~ ~ Items[{Slot:11b}] run function magma:ui/left/11
execute unless data block ~ ~ ~ Items[{Slot:12b}] run function magma:ui/left/12
execute unless data block ~ ~ ~ Items[{Slot:13b}] run function magma:ui/left/13
execute unless data block ~ ~ ~ Items[{Slot:14b}] run function magma:ui/left/14
execute unless data block ~ ~ ~ Items[{Slot:15b}] run function magma:ui/left/15
execute unless data block ~ ~ ~ Items[{Slot:16b}] run function magma:ui/left/16

execute unless data block ~ ~ ~ Items[{Slot:19b}] run function magma:ui/left/19
execute unless data block ~ ~ ~ Items[{Slot:20b}] run function magma:ui/left/20
execute unless data block ~ ~ ~ Items[{Slot:21b}] run function magma:ui/left/21
execute unless data block ~ ~ ~ Items[{Slot:22b}] run function magma:ui/left/22
execute unless data block ~ ~ ~ Items[{Slot:23b}] run function magma:ui/left/23
execute unless data block ~ ~ ~ Items[{Slot:24b}] run function magma:ui/left/24
execute unless data block ~ ~ ~ Items[{Slot:25b}] run function magma:ui/left/25

execute positioned -47 10 41 run function magma:generate/start


# Clearing inventory
clear @p

# Giving items
setblock 0 250 0 yellow_shulker_box

data modify block 0 250 0 Items set from storage chest 3

execute at @p run loot give @p mine 0 250 0 minecraft:air{drop_contents: 1b}

setblock 0 250 0 air

# Removing glass and random items
clear @p light_gray_stained_glass_pane