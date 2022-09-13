# Copy player inventory data to storage and sort into sections so they can be loaded.

# Reset sections:
data modify storage inventory inventory set value []
data modify storage inventory hotbar set value []
data modify storage inventory armor set value []
data modify storage inventory offhand set value []

# Copy whole inventory data:
data modify storage inventory whole_inventory set from entity @s Inventory

# Sort the slots into sections:
function b:utils/loadout/store_internal/sort_slots