# Add 106 to the slot number so it will fit inside a shulker box:
execute store result storage inventory whole_inventory[-1].Slot byte 1 run scoreboard players add #slot bastiongen 106

# Move item into the offhand section:
data modify storage inventory offhand append from storage inventory whole_inventory[-1]
data remove storage inventory whole_inventory[-1]

# Get the slot number for the next item:
execute store result score #slot bastiongen run data get storage inventory whole_inventory[-1].Slot
scoreboard players remove #slot_count bastiongen 1