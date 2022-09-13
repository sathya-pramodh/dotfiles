scoreboard players add time timer 1

function b:utils/timer/get_tick_difference
function b:utils/timer/get_minutes
function b:utils/timer/get_seconds

# m:s
#title @a actionbar [{"nbt":"m","storage":"timer","interpret":true},":",{"nbt":"s","storage":"timer","interpret":true}]
schedule function b:utils/timer/tick 1s

# m:s.ms
#function b:utils/timer/get_miliseconds
#title @a actionbar [{"nbt":"m","storage":"timer","interpret":true},":",{"nbt":"s","storage":"timer","interpret":true},".",{"nbt":"ms","storage":"timer","interpret":true}]
#schedule function b:utils/timer/tick 1t