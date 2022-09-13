# Remove 100 from the slot number so it will fit inside a shulker box:
execute store result storage inventory whole_inventory[-1].Slot byte 1 run scoreboard players remove #slot bastiongen 100

# Move item into the armor section:
data modify storage inventory armor append from storage inventory whole_inventory[-1]
data remove storage inventory whole_inventory[-1]

# Get the slot number for the next item and repeat:
execute store result score #slot bastiongen run data get storage inventory whole_inventory[-1].Slot
scoreboard players remove #slot_count bastiongen 1
function b:utils/loadout/store_internal/check_armor