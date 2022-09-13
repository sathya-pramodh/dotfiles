# Move item into the hotbar section:
data modify storage inventory hotbar append from storage inventory whole_inventory[-1]
data remove storage inventory whole_inventory[-1]

# Get the slot number for the next item and repeat:
execute store result score #slot bastiongen run data get storage inventory whole_inventory[-1].Slot
scoreboard players remove #slot_count bastiongen 1
function b:utils/loadout/store_internal/check_hotbar