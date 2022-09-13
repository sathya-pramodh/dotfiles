# Reset Entities
kill @e[type=minecraft:enderman]
kill @e[type=minecraft:dragon_fireball]
kill @e[nbt={"Particle":"minecraft:dragon_breath"}]
kill @e[type=minecraft:ender_dragon]
kill @e[type=minecraft:end_crystal]
kill @e[type=minecraft:boat]

# Reset Scoreboard
scoreboard players set mode Settings 1
scoreboard players set hasPerched Dragon 0
scoreboard players set prevPhase Dragon 0
scoreboard players reset deadTime Dragon
scoreboard players reset summonTime Time
scoreboard players set isDead Dragon 0
scoreboard players set @p death 0
scoreboard objectives setdisplay sidebar

# Reset Island
function end-practice:islands/pre_load
function end-practice:islands/taiga
function end-practice:islands/post_load
function end-practice:fountain_presets/fountain_preset_load
execute if score crystals Settings matches 0 run kill @e[type=minecraft:end_crystal]

# TP player to their set spawn
execute in minecraft:the_end positioned 0 65 0 run tag @e[type=armor_stand,distance=0..10,limit=1] add playerSpawn
execute if entity @e[tag=playerSpawn,tag=north] at @e[tag=playerSpawn] run tp @p ~ ~ ~ 180 0
execute if entity @e[tag=playerSpawn,tag=east] at @e[tag=playerSpawn] run tp @p ~ ~ ~ -90 0
execute if entity @e[tag=playerSpawn,tag=south] at @e[tag=playerSpawn] run tp @p ~ ~ ~ 0 0
execute if entity @e[tag=playerSpawn,tag=west] at @e[tag=playerSpawn] run tp @p ~ ~ ~ 90 0
execute unless entity @e[tag=playerSpawn] run tp @p 0 62 1 180 0
kill @e[tag=playerSpawn]
gamemode survival @p

# Load health display
execute if score healthDisplay Settings matches 0 run scoreboard objectives setdisplay sidebar
execute if score healthDisplay Settings matches 1 run scoreboard objectives setdisplay sidebar EnderDragon

# Give player their loadout
clear @p
execute if score cycleLoadout Settings matches 0 run function end-practice:loadouts/custom/apply
execute if score cycleLoadout Settings matches 1 run give @p minecraft:white_bed 4
execute if score cycleLoadout Settings matches 2 run give @p minecraft:white_bed 5
execute if score cycleLoadout Settings matches 3 run give @p minecraft:white_bed 6
execute if score cycleLoadout Settings matches 4 run give @p minecraft:white_bed 7
execute if score cycleLoadout Settings matches 5 run give @p minecraft:white_bed 8
execute if score cycleLoadout Settings matches 6 run give @p minecraft:white_bed 9

# Summon the dragon at random height
execute if score heights Settings matches 0..1 run function end-practice:rng/random_height
execute if score heights Settings matches 3 run function end-practice:rng/random_list_auto
execute if score heights Settings matches 4 run function end-practice:rng/random_list_manual
function end-practice:dragon/one_cycle_summon_dragon

# Safety if lists are empty
execute if score heights Settings matches 3 if score numListSlots CONSTANT matches 0 run tellraw @p {"text":"Auto List is empty, play All Heights (auto-add) for a while first","color":"red"}
execute if score heights Settings matches 4 if score numListSlots CONSTANT matches 0 run tellraw @p {"text":"Manual List is empty, manually add some heights first","color":"red"}
execute if score heights Settings matches 3..4 if score numListSlots CONSTANT matches 0 run kill @e[type=ender_dragon]

# Load bossbar
bossbar set minecraft:dragon name {"text":"Ender Dragon","color":"white","italic":false}
execute if score heights Settings matches 3 run bossbar set minecraft:dragon name [{"text":"Ender Dragon | Auto Slot "},{"score":{"name":"#Slot","objective":"EnderDragon"}}]
execute if score heights Settings matches 4 run bossbar set minecraft:dragon name [{"text":"Ender Dragon | Manual Slot "},{"score":{"name":"#Slot","objective":"EnderDragon"}}]
bossbar set minecraft:dragon color pink
bossbar set minecraft:dragon max 200
bossbar set minecraft:dragon players @a
bossbar set minecraft:dragon visible true