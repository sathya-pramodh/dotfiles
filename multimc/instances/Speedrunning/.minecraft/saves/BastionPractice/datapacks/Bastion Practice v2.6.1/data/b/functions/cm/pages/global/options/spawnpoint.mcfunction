#execute unless score bastion settings matches -1 run scoreboard players add spawnpoint settings 1
execute if score bastion settings matches -1 run scoreboard players add spawnpoint_random settings 1
execute if score bastion settings matches 0 run scoreboard players add spawnpoint_bridge settings 1
execute if score bastion settings matches 1 run scoreboard players add spawnpoint_stables settings 1
execute if score bastion settings matches 2 run scoreboard players add spawnpoint_treasure settings 1
execute if score bastion settings matches 3 run scoreboard players add spawnpoint_units settings 1

# Random
execute if score bastion settings matches -1 if score spawnpoint_random settings matches 1.. run scoreboard players set spawnpoint_random settings -1
# Bridge
execute if score bastion settings matches 0 if score spawnpoint_bridge settings matches 9.. run scoreboard players set spawnpoint_bridge settings -1
# Stables
execute if score bastion settings matches 1 if score spawnpoint_stables settings matches 10.. run scoreboard players set spawnpoint_stables settings -1
# Treasure
execute if score bastion settings matches 2 if score spawnpoint_treasure settings matches 6.. run scoreboard players set spawnpoint_treasure settings -1
# Housing
execute if score bastion settings matches 3 if score spawnpoint_units settings matches 8.. run scoreboard players set spawnpoint_units settings -1