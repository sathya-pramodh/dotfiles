# Get the last slot number in preparation:
execute store result score #slot bastiongen run data get storage inventory whole_inventory[-1].Slot
execute store result score #slot_count bastiongen run data get storage inventory whole_inventory

# Check all the sections in turn, sorting them (slots always appear in order, processing in reverse order for more optimal list iteration):
function b:utils/loadout/store_internal/check_offhand
function b:utils/loadout/store_internal/check_armor
function b:utils/loadout/store_internal/check_inventory
function b:utils/loadout/store_internal/check_hotbar