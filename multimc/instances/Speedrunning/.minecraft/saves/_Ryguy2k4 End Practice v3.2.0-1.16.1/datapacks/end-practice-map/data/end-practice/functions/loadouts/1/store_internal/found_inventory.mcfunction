# Remove 9 from the slot number so it will fit inside a shulker box:
execute store result storage loadout_1 whole_inventory[-1].Slot byte 1 run scoreboard players remove slot Loadouts 9

# Move item into the inventory section:
data modify storage loadout_1 inventory append from storage loadout_1 whole_inventory[-1]
data remove storage loadout_1 whole_inventory[-1]

# Get the slot number for the next item and repeat:
execute store result score slot Loadouts run data get storage loadout_1 whole_inventory[-1].Slot
scoreboard players remove slotCount Loadouts 1
function end-practice:loadouts/1/store_internal/check_inventory