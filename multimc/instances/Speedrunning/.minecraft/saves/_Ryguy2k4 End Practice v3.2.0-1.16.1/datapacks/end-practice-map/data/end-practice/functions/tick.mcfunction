# Chest Menu
execute in the_end as @a run function end-practice:chest_menu/check
execute as @a run function end-practice:loadouts/check_placeholder
execute at @a as @e[type=item, distance=..1.4, nbt={Item:{tag:{isMenu:1b}}}] run data modify entity @s PickupDelay set value 0

# Loadout Shulker Box
execute unless block 83 24 4 minecraft:purple_shulker_box run setblock 83 24 4 minecraft:purple_shulker_box

# TP player to lobby if in lobby mode
execute in minecraft:the_end positioned 90 26 0 if entity @p[distance=15..,gamemode=survival] if score mode Settings matches 0 run tp @p 90 26 0 -90 0
execute in minecraft:the_end positioned 90 26 0 if entity @p[distance=15..,gamemode=adventure] if score mode Settings matches 0 run tp @p 90 26 0 -90 0

# Clear player inventory in lobby
execute if entity @p[gamemode=survival] if score mode Settings matches 0 run clear @p
execute if entity @p[gamemode=adventure] if score mode Settings matches 0 run clear @p

# Stop dragon and endermen death sounds
stopsound @a hostile minecraft:entity.ender_dragon.death
stopsound @a hostile minecraft:entity.enderman.death

# Effects to have at all times
effect give @a minecraft:fire_resistance 5 0 true
effect give @a minecraft:saturation 5 0 true

# Creative/spectator message
execute if entity @p[gamemode=creative] if score mode Settings matches 0 unless entity @p[tag=editor] run title @p actionbar {"text":"Please set your gamemode to survival or adventure","color":"white","bold":"true"}
execute if entity @p[gamemode=spectator] if score mode Settings matches 0 unless entity @p[tag=editor] run title @p actionbar {"text":"Please set your gamemode to survival or adventure","color":"white","bold":"true"}

# Sub-tick functions
execute if score mode Settings matches 1..2 run function end-practice:dragon/dragon_manager
execute if score mode Settings matches 0..4 run function end-practice:timer
execute in the_end if entity @p[tag=editor] run function end-practice:fountain_presets/fountain_preset_signs

# These dragons should never exist
kill @e[type=ender_dragon,nbt={DragonPhase:8}]
kill @e[type=ender_dragon,nbt={DragonPhase:9}]
kill @e[type=ender_dragon,nbt={DragonPhase:10}]
execute if score mode Settings matches 0 run kill @e[type=ender_dragon]
execute if score @p death matches 1.. run kill @e[type=ender_dragon]

# Put reset signs on fountain
execute in minecraft:the_end if block 1 62 0 minecraft:air run setblock 1 62 0 minecraft:crimson_wall_sign[facing=east]
execute in minecraft:the_end if block -1 62 0 minecraft:air run setblock -1 62 0 minecraft:crimson_wall_sign[facing=west]
execute in minecraft:the_end if block 0 62 1 minecraft:air run setblock 0 62 1 minecraft:crimson_wall_sign[facing=south]
execute in minecraft:the_end if block 0 62 -1 minecraft:air run setblock 0 62 -1 minecraft:crimson_wall_sign[facing=north]
execute in minecraft:the_end if block 1 62 0 minecraft:crimson_wall_sign run data merge block 1 62 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function end-practice:reset"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"white"}',Text3:'{"text":"RESET","bold":true,"color":"white"}'}
execute in minecraft:the_end if block -1 62 0 minecraft:crimson_wall_sign run data merge block -1 62 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function end-practice:reset"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"white"}',Text3:'{"text":"RESET","bold":true,"color":"white"}'}
execute in minecraft:the_end if block 0 62 -1 minecraft:crimson_wall_sign run data merge block 0 62 -1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function end-practice:reset"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"white"}',Text3:'{"text":"RESET","bold":true,"color":"white"}'}
execute in minecraft:the_end if block 0 62 1 minecraft:crimson_wall_sign run data merge block 0 62 1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function end-practice:reset"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"white"}',Text3:'{"text":"RESET","bold":true,"color":"white"}'}

# Sub-tick functions
execute if score mode Settings matches 1 in the_end run function end-practice:one_cycle_practice/one_cycle_practice_tick
execute if score mode Settings matches 2 in the_end run function end-practice:perch_practice/perch_practice_tick
execute if score mode Settings matches 3..4 in the_end run function end-practice:perch_practice/perch_practice_resummon_tick