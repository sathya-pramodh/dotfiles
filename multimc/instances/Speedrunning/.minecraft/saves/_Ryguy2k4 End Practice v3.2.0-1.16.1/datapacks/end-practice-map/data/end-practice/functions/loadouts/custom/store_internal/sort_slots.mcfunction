# Get the last slot number in preparation:
execute store result score slot Loadouts run data get storage loadout_custom whole_inventory[-1].Slot
execute store result score slotCount Loadouts run data get storage loadout_custom whole_inventory

# Check all the sections in turn, sorting them (slots always appear in order, processing in reverse order for more optimal list iteration):
function end-practice:loadouts/custom/store_internal/check_offhand
function end-practice:loadouts/custom/store_internal/check_armor
function end-practice:loadouts/custom/store_internal/check_inventory
function end-practice:loadouts/custom/store_internal/check_hotbar