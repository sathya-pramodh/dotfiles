execute in the_nether run tp @s 5.5 132 5.0 0 2.5
schedule clear b:logic/start_button/_mode/_routing/items/_glow/glow_effect
schedule clear b:logic/start_button/_mode/_running/running_tick 
schedule clear b:logic/start_button/_mode/_routing/routing_tick
function b:utils/timer/stop
execute if score #initialized settings matches 0 run function b:utils/_init/reset_time
scoreboard players set #initialized settings 1
title @s actionbar ""
execute in the_nether run function b:logic/prev_run_info/save_info
execute in the_nether run forceload add 0 0
schedule function b:logic/prev_run_info/update_display 1t
clear @s
scoreboard players set #running mode 0
scoreboard players reset @s dropped_pick
scoreboard players reset @s dropped_plate
scoreboard players set freeze mode 0
scoreboard players set glow mode 0
scoreboard objectives setdisplay sidebar