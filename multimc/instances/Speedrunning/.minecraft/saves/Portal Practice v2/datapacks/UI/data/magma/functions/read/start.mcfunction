# Resetting formation
data modify storage magma formation set value []

# Copying items from chest to storage
data modify storage magma chest set from block ~ ~ ~ Items
tp @p @s
# Scoreboards
scoreboard players set bool magma 0
scoreboard players set half magma 1

function magma:read/repeat
