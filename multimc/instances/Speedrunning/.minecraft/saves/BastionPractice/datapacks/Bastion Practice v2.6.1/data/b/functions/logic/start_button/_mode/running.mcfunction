function b:utils/loadout/apply
gamemode survival @s
effect give @s resistance 2 4 true
function b:utils/timer/start
schedule function b:logic/start_button/_mode/_running/running_tick 1t