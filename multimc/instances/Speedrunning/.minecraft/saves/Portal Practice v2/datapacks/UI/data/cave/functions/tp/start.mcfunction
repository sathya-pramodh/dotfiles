# Killing items
kill @e[type=item]

# Picking random position
function cave:tp/random/start

# Summoning area effect cloud
summon area_effect_cloud ~ ~ ~ {Tags:["tp"],Duration:100}

# Execute as that cloud
execute as @e[tag=tp,limit=1] at @s run function cave:tp/entity