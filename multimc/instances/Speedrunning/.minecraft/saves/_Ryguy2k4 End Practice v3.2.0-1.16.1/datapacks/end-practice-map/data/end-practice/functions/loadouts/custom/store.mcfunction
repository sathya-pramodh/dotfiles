# Copy player inventory data to storage and sort into sections so they can be loaded.

# Reset sections:
data modify storage loadout_custom inventory set value []
data modify storage loadout_custom hotbar set value []
data modify storage loadout_custom armor set value []
data modify storage loadout_custom offhand set value []

# Copy whole inventory data:
data modify storage loadout_custom whole_inventory set from entity @p Inventory

# Sort the slots into sections:
function end-practice:loadouts/custom/store_internal/sort_slots