# Copy player inventory data to storage and sort into sections so they can be loaded.

# Reset sections:
data modify storage loadout_2 inventory set value []
data modify storage loadout_2 hotbar set value []
data modify storage loadout_2 armor set value []
data modify storage loadout_2 offhand set value []

# Copy whole inventory data:
data modify storage loadout_2 whole_inventory set from entity @p Inventory

# Sort the slots into sections:
function end-practice:loadouts/2/store_internal/sort_slots