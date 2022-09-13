# If new minutes is lower than fastest minutes
execute if score minute time < @s Minute run function timer:save/s

# If minutes is the same, but seconds is lower
execute if score minute time = @s Minute if score second time < @s Second run function timer:save/s

# If seconds is the same, seconds is the same, but miliseconds is lower
execute if score minute time = @s Minute if score second time = @s Second if score milisecond time < @s Milisecond run function timer:save/s


## Showing values

# Showing values on sign into entity
setblock ~ ~5 ~ air
setblock ~ ~5 ~ oak_sign

execute positioned ~ ~5 ~ run function timer:display/cloud

kill @e[type=area_effect_cloud,tag=time]
summon area_effect_cloud 0 52 0 {CustomName:'"Time Not Displaying Properly"',CustomNameVisible:1b,Tags:["time","temp"],Duration:100000}
data modify entity @e[limit=1,tag=temp] CustomName set from block ~ ~5 ~ Text1
tag @e[limit=1,tag=temp] remove temp

summon area_effect_cloud 0 51.5 0 {CustomName:'"Time Not Displaying Properly"',CustomNameVisible:1b,Tags:["time","temp"],Duration:100000}
data modify entity @e[limit=1,tag=temp] CustomName set from block ~ ~5 ~ Text2
tag @e[limit=1,tag=temp] remove temp

# Current sign entity
data modify entity @e[limit=1,tag=current] CustomName set from block ~ ~5 ~ Text2

# Displays Time On Screen
function timer:display/title

# Removing sign
setblock ~ ~5 ~ air