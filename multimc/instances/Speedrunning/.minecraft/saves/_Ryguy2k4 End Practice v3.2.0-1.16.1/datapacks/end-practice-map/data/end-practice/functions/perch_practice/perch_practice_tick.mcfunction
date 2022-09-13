# Update phase display
execute if score phaseDisplay Settings matches 0 if score phase Dragon matches 0..2 if score second Time matches 0..9 run title @p actionbar ["",{"color":"dark_aqua","bold":true,"score":{"name":"minute","objective":"Time"}},{"color":"dark_aqua","bold":true,"text":":0"},{"color":"dark_aqua","bold":true,"score":{"name":"second","objective":"Time"}}]
execute if score phaseDisplay Settings matches 0 if score phase Dragon matches 0..2 if score second Time matches 10.. run title @p actionbar ["",{"color":"dark_aqua","bold":true,"score":{"name":"minute","objective":"Time"}},{"color":"dark_aqua","bold":true,"text":":"},{"color":"dark_aqua","bold":true,"score":{"name":"second","objective":"Time"}}]
execute if score phaseDisplay Settings matches 1 if score phase Dragon matches 0 if score second Time matches 0..9 run title @p actionbar ["",{"color":"dark_aqua","bold":true,"score":{"name":"minute","objective":"Time"}},{"color":"dark_aqua","bold":true,"text":":0"},{"color":"dark_aqua","bold":true,"score":{"name":"second","objective":"Time"}},{"text":" | ","color":"gray","underline":true},{"color":"dark_aqua","bold":true,"text":"Normal"}]
execute if score phaseDisplay Settings matches 1 if score phase Dragon matches 1 if score second Time matches 0..9 run title @p actionbar ["",{"color":"dark_aqua","bold":true,"score":{"name":"minute","objective":"Time"}},{"color":"dark_aqua","bold":true,"text":":0"},{"color":"dark_aqua","bold":true,"score":{"name":"second","objective":"Time"}},{"text":" | ","color":"gray","underline":true},{"color":"dark_aqua","bold":true,"text":"Strafing"}]
execute if score phaseDisplay Settings matches 1 if score phase Dragon matches 2 if score second Time matches 0..9 run title @p actionbar ["",{"color":"dark_aqua","bold":true,"score":{"name":"minute","objective":"Time"}},{"color":"dark_aqua","bold":true,"text":":0"},{"color":"dark_aqua","bold":true,"score":{"name":"second","objective":"Time"}},{"text":" | ","color":"gray","underline":true},{"color":"dark_aqua","bold":true,"text":"Perch Approach"}]
execute if score phaseDisplay Settings matches 1 if score phase Dragon matches 0 if score second Time matches 10.. run title @p actionbar ["",{"color":"dark_aqua","bold":true,"score":{"name":"minute","objective":"Time"}},{"color":"dark_aqua","bold":true,"text":":"},{"color":"dark_aqua","bold":true,"score":{"name":"second","objective":"Time"}},{"text":" | ","color":"gray","underline":true},{"color":"dark_aqua","bold":true,"text":"Normal"}]
execute if score phaseDisplay Settings matches 1 if score phase Dragon matches 1 if score second Time matches 10.. run title @p actionbar ["",{"color":"dark_aqua","bold":true,"score":{"name":"minute","objective":"Time"}},{"color":"dark_aqua","bold":true,"text":":"},{"color":"dark_aqua","bold":true,"score":{"name":"second","objective":"Time"}},{"text":" | ","color":"gray","underline":true},{"color":"dark_aqua","bold":true,"text":"Strafing"}]
execute if score phaseDisplay Settings matches 1 if score phase Dragon matches 2 if score second Time matches 10.. run title @p actionbar ["",{"color":"dark_aqua","bold":true,"score":{"name":"minute","objective":"Time"}},{"color":"dark_aqua","bold":true,"text":":"},{"color":"dark_aqua","bold":true,"score":{"name":"second","objective":"Time"}},{"text":" | ","color":"gray","underline":true},{"color":"dark_aqua","bold":true,"text":"Perch Approach"}]
execute if score phase Dragon > prevPhase Dragon if score phase Dragon matches 2 if score phaseDisplay Settings matches 1 run title @p title {"text":"Dragon is Perching"}
execute if score phase Dragon matches 3 run scoreboard players set hasPerched Dragon 1

# Update dragon head distance
execute if score dragonDistance Settings matches 1 if score phase Dragon matches 3 run function end-practice:dragon/dragon_distance	

# Check auto perch
execute if score autoPerch Settings matches 1 if score totalTicks Time matches 3600..3620 run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:2}
execute if score autoPerch Settings matches 2 if score totalTicks Time matches 2400..2420 run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:2}
execute if score autoPerch Settings matches 3 if score totalTicks Time matches 1800..1820 run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:2}
execute if score autoPerch Settings matches 4 if score totalTicks Time matches 1200..1220 run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:2}
execute if score autoPerch Settings matches 5 if score totalTicks Time matches 600..620 run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:2}
execute if score autoPerch Settings matches 6 if score totalTicks Time matches 300..320 run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:2}

# Monitor force perch
execute if score @p forceperch matches 1.. run data merge entity @e[type=ender_dragon,limit=1] {DragonPhase:2}
execute if score @p forceperch matches 1.. run tellraw @p {"text":"Forcing dragon to perch","color":"blue","bold":"true"}
execute if score @p forceperch matches 1.. run scoreboard players set @a forceperch 0

# Monitor reset egg
execute as @e[type=minecraft:egg] run function end-practice:reset

# Kill dragon after in lands for instant reset
execute if score instantReset Settings matches 1 run kill @e[type=ender_dragon,nbt={DragonPhase:4}]
execute if score instantReset Settings matches 1 run kill @e[type=ender_dragon,nbt={DragonPhase:5}]
execute if score instantReset Settings matches 1 if entity @e[type=ender_dragon,nbt={DragonPhase:6}] if score damageMessage Settings matches 1 run tellraw @p {"text":"Failed","color":"red"}
execute if score instantReset Settings matches 1 if entity @e[type=ender_dragon,nbt={DragonPhase:6}] if score damageMessage Settings matches 2 run tellraw @p {"text":"Failed","color":"dark_gray"}
execute if score instantReset Settings matches 1 if entity @e[type=ender_dragon,nbt={DragonPhase:6}] run scoreboard players set failed Dragon 1
execute if score instantReset Settings matches 1 run kill @e[type=ender_dragon,nbt={DragonPhase:6}]
execute if score instantReset Settings matches 1 run kill @e[type=ender_dragon,nbt={DragonPhase:7}]

# Kill dragon after it leaves the fountain
execute if score hasPerched Dragon matches 1 if entity @e[type=ender_dragon,nbt={DragonPhase:4}] if score damageMessage Settings matches 1 run tellraw @p {"text":"Failed","color":"red"}
execute if score hasPerched Dragon matches 1 if entity @e[type=ender_dragon,nbt={DragonPhase:4}] if score damageMessage Settings matches 2 run tellraw @p {"text":"Failed","color":"dark_gray"}
execute if score hasPerched Dragon matches 1 if entity @e[type=ender_dragon,nbt={DragonPhase:4}] run scoreboard players set failed Dragon 1
execute if score hasPerched Dragon matches 1 run kill @e[type=ender_dragon,nbt={DragonPhase:4}]

# Clear Loadout Placeholders
clear @p minecraft:barrier