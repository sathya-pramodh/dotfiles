# Move item into the hotbar section:
data modify storage loadout_1 hotbar append from storage loadout_1 whole_inventory[-1]
data remove storage loadout_1 whole_inventory[-1]

# Get the slot number for the next item and repeat:
execute store result score slot Loadouts run data get storage loadout_1 whole_inventory[-1].Slot
scoreboard players remove slotCount Loadouts 1
function end-practice:loadouts/1/store_internal/check_hotbar
