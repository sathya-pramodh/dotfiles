# Copy player inventory data to storage and sort into sections so they can be loaded.

# Reset sections:
data modify storage loadout_3 inventory set value []
data modify storage loadout_3 hotbar set value []
data modify storage loadout_3 armor set value []
data modify storage loadout_3 offhand set value []

# Copy whole inventory data:
data modify storage loadout_3 whole_inventory set from entity @p Inventory

# Sort the slots into sections:
function end-practice:loadouts/3/store_internal/sort_slots