# Load and apply all storage items into the players inventory
execute unless score armor settings matches 0 in overworld run data modify block -30000000 0 1602 Items set from storage inventory armor
execute unless score armor settings matches 0 in overworld run loot replace entity @s armor.feet 4 mine -30000000 0 1602 minecraft:air{drop_contents:1b}

execute in overworld run data modify block -30000000 0 1602 Items set from storage inventory hotbar
execute in overworld run loot replace entity @s hotbar.0 9 mine -30000000 0 1602 minecraft:air{drop_contents:1b}

execute in overworld run data modify block -30000000 0 1602 Items set from storage inventory inventory
execute in overworld run loot replace entity @s inventory.0 27 mine -30000000 0 1602 minecraft:air{drop_contents:1b}

execute in overworld run data modify block -30000000 0 1602 Items set from storage inventory offhand
execute in overworld run loot replace entity @s weapon.offhand 1 mine -30000000 0 1602 minecraft:air{drop_contents:1b}