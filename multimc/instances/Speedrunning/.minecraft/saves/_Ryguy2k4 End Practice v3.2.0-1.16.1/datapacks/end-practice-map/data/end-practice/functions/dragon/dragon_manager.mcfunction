# Manage dragon health and phase
scoreboard players operation prevHealth Dragon = health Dragon
scoreboard players operation Health EnderDragon = health Dragon
execute store result score health Dragon run data get entity @e[type=minecraft:ender_dragon,limit=1] Health 1
execute if score health Dragon < prevHealth Dragon unless score prevPhase Dragon > phase Dragon unless score prevPhase Dragon < phase Dragon unless score @p death matches 1.. unless entity @e[type=ender_dragon,nbt={DragonPhase:4}] run function end-practice:dragon/print_damage
execute store result bossbar minecraft:dragon value run scoreboard players get health Dragon
execute unless score totalTicks Time < deadTime Dragon run scoreboard players operation prevPhase Dragon = phase Dragon
execute store result score phase Dragon run data get entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase

# 1 Second delay after dragon dies
execute if score health Dragon matches 0 unless score isDead Dragon matches 1 run schedule function end-practice:reset 10
execute if score health Dragon matches 0 run scoreboard players set isDead Dragon 1