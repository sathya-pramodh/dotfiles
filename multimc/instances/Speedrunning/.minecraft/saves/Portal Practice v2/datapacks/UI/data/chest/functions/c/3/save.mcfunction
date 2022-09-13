# Dropper has 9 items, so this easy well for no overflow
setblock 0 0 0 dropper
data modify block 0 0 0 Items set from entity @p Inventory

# Replacing empty slots with light_gray_stained_glass_pane
execute unless data block 0 0 0 Items[{Slot:0b}] run data modify block 0 0 0 Items[{Slot:0b}] merge value {id:"minecraft:light_gray_stained_glass_pane",Count:64b}
execute unless data block 0 0 0 Items[{Slot:1b}] run data modify block 0 0 0 Items[{Slot:1b}] merge value {id:"minecraft:light_gray_stained_glass_pane",Count:64b}
execute unless data block 0 0 0 Items[{Slot:2b}] run data modify block 0 0 0 Items[{Slot:2b}] merge value {id:"minecraft:light_gray_stained_glass_pane",Count:64b}
execute unless data block 0 0 0 Items[{Slot:3b}] run data modify block 0 0 0 Items[{Slot:3b}] merge value {id:"minecraft:light_gray_stained_glass_pane",Count:64b}
execute unless data block 0 0 0 Items[{Slot:4b}] run data modify block 0 0 0 Items[{Slot:4b}] merge value {id:"minecraft:light_gray_stained_glass_pane",Count:64b}
execute unless data block 0 0 0 Items[{Slot:5b}] run data modify block 0 0 0 Items[{Slot:5b}] merge value {id:"minecraft:light_gray_stained_glass_pane",Count:64b}
execute unless data block 0 0 0 Items[{Slot:6b}] run data modify block 0 0 0 Items[{Slot:6b}] merge value {id:"minecraft:light_gray_stained_glass_pane",Count:64b}
execute unless data block 0 0 0 Items[{Slot:7b}] run data modify block 0 0 0 Items[{Slot:7b}] merge value {id:"minecraft:light_gray_stained_glass_pane",Count:64b}
execute unless data block 0 0 0 Items[{Slot:8b}] run data modify block 0 0 0 Items[{Slot:8b}] merge value {id:"minecraft:light_gray_stained_glass_pane",Count:64b}

# Placing into proper storage
data modify storage chest 3 set from block 0 0 0 Items

# Killing dropper
setblock 0 0 0 air

# Gamemode and clear
gamemode adventure @p
clear @p