# Reset sub-functions
execute if score mode Settings matches 1 run function end-practice:one_cycle_practice/one_cycle_practice_reset
execute if score mode Settings matches 2 run function end-practice:perch_practice/perch_practice_reset

# Stuff
gamemode adventure @p
gamerule doMobSpawning false
advancement revoke @a only minecraft:end/kill_dragon
tag @p remove editor
title @p actionbar {"text":""}

# Chat Reset Message
execute if entity @e[type=ender_dragon] if score damageMessage Settings matches 1 run tellraw @p {"text":"Reset","color":"red"}
execute if entity @e[type=ender_dragon] if score damageMessage Settings matches 2 run tellraw @p {"text":"Reset","color":"dark_gray"}
execute if score damageMessage Settings matches 1 run tellraw @p {"text":"--------","color":"gold"}
execute if score damageMessage Settings matches 2 run tellraw @p {"text":"--------","color":"dark_gray"}

# Reset Bossbar
bossbar set minecraft:dragon visible false

# Reset Scoreboard
scoreboard players set mode Settings 0
scoreboard players set hasPerched Dragon 0
scoreboard players set prevPhase Dragon 0
scoreboard players reset summonTime Time
scoreboard players set isDead Dragon 0
scoreboard players set failed Dragon 0
scoreboard players set @p death 0
scoreboard players set editing Loadouts 0
scoreboard objectives setdisplay sidebar

# Reset Entities
kill @e[type=minecraft:enderman]
kill @e[type=minecraft:dragon_fireball]
kill @e[nbt={"Particle":"minecraft:dragon_breath"}]
kill @e[type=minecraft:ender_dragon]
kill @e[type=minecraft:end_crystal]
kill @e[type=minecraft:boat]
kill @e[type=minecraft:chicken]

# Failsafe
execute if score mode Settings matches 0 in minecraft:the_end run tp @p[gamemode=survival] 90 26 0 -90 0

# Make sure loadout signs are correct
data merge block 89 26 -3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function end-practice:loadouts/1/edit_loadout"}}',Text2:'{"text":"Loadout 1","color":"white"}',Text3:'{"text":"Click to Edit","color":"yellow"}'}
data merge block 90 26 -3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function end-practice:loadouts/2/edit_loadout"}}',Text2:'{"text":"Loadout 2","color":"white"}',Text3:'{"text":"Click to Edit","color":"yellow"}'}
data merge block 91 26 -3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function end-practice:loadouts/3/edit_loadout"}}',Text2:'{"text":"Loadout 3","color":"white"}',Text3:'{"text":"Click to Edit","color":"yellow"}'}
data merge block 91 26 3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function end-practice:loadouts/custom/edit_loadout"}}',Text2:'{"text":"Custom Loadout","color":"white"}',Text3:'{"text":"Click to Edit","color":"yellow"}'}