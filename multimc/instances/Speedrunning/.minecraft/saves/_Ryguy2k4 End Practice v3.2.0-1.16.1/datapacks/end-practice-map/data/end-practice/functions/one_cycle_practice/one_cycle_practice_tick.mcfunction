# These dragons should not exist during one-cycle
kill @e[type=ender_dragon,nbt={DragonPhase:0}]
kill @e[type=ender_dragon,nbt={DragonPhase:1}]
execute if entity @e[type=ender_dragon,nbt={DragonPhase:4}] if score damageMessage Settings matches 1 run tellraw @p {"text":"Failed","color":"red"}
execute if entity @e[type=ender_dragon,nbt={DragonPhase:4}] if score damageMessage Settings matches 2 run tellraw @p {"text":"Failed","color":"dark_gray"}
execute if entity @e[type=ender_dragon,nbt={DragonPhase:4}] if score heights Settings matches 1 run scoreboard players set auto Dragon 1
kill @e[type=ender_dragon,nbt={DragonPhase:4}]
execute unless score instantReset Settings matches 0 run kill @e[type=ender_dragon,nbt={DragonPhase:5}]
execute unless score instantReset Settings matches 0 if entity @e[type=ender_dragon,nbt={DragonPhase:6}] if score damageMessage Settings matches 1 run tellraw @p {"text":"Failed","color":"red"}
execute unless score instantReset Settings matches 0 if entity @e[type=ender_dragon,nbt={DragonPhase:6}] if score damageMessage Settings matches 2 run tellraw @p {"text":"Failed","color":"dark_gray"}
execute unless score instantReset Settings matches 0 if entity @e[type=ender_dragon,nbt={DragonPhase:6}] if score heights Settings matches 1 run scoreboard players set auto Dragon 1
execute unless score instantReset Settings matches 0 run kill @e[type=ender_dragon,nbt={DragonPhase:6}]
execute unless score instantReset Settings matches 0 run kill @e[type=ender_dragon,nbt={DragonPhase:7}]

# Load dragon head distance
execute if score dragonDistance Settings matches 1 if score phase Dragon matches 3 run function end-practice:dragon/dragon_distance

# Monitor reset egg
execute as @e[type=minecraft:egg] run function end-practice:reset