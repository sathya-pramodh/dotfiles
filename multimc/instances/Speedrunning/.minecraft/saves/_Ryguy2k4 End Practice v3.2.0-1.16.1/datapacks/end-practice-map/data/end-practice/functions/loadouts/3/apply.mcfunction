# Load and apply all storage items into the players inventory
execute in the_end run data modify block 83 24 4 Items set from storage loadout_3 armor
execute in the_end run loot replace entity @p armor.feet 4 mine 83 24 4 minecraft:air{drop_contents:1b}

execute in the_end run data modify block 83 24 4 Items set from storage loadout_3 hotbar
execute in the_end run loot replace entity @p hotbar.0 9 mine 83 24 4 minecraft:air{drop_contents:1b}

execute in the_end run data modify block 83 24 4 Items set from storage loadout_3 inventory
execute in the_end run loot replace entity @p inventory.0 27 mine 83 24 4 minecraft:air{drop_contents:1b}

execute in the_end run data modify block 83 24 4 Items set from storage loadout_3 offhand
execute in the_end run loot replace entity @p weapon.offhand 1 mine 83 24 4 minecraft:air{drop_contents:1b}