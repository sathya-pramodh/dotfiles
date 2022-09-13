# Add 106 to the slot number so it will fit inside a shulker box:
execute store result storage loadout_custom whole_inventory[-1].Slot byte 1 run scoreboard players add slot Loadouts 106

# Move item into the offhand section:
data modify storage loadout_custom offhand append from storage loadout_custom whole_inventory[-1]
data remove storage loadout_custom whole_inventory[-1]

# Get the slot number for the next item:
execute store result score slot Loadouts run data get storage loadout_custom whole_inventory[-1].Slot
scoreboard players remove slotCount Loadouts 1