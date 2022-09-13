scoreboard players set time timer -1
execute store result score start_tick timer run time query gametime
execute at @s run playsound minecraft:block.note_block.chime ambient @s ~ ~ ~ 1 1
schedule function b:utils/timer/tick 1t