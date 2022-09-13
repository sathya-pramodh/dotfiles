scoreboard players set wipe time 0
# Telling player
title @a clear
title @a title {"text":"All PB's Reset","color":"red","bold":true}
data modify block 3 69 -1 Text3 set value '{"text":""}'

# Stores the fastest times of each portal
kill @e[tag=data]

# Displays fastest time for each portal in lobby
kill @e[tag=sign]

# Displays fastest time for blind/ruined/cave
kill @e[tag=blind]
kill @e[tag=ruined]
kill @e[tag=cave]

# Displayer fastest and previous time on last portal
kill @e[tag=time]