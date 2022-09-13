# Stores data point into scoreboard
execute store result score bool magma run data get storage magma formation[35]
# Swaps it from 0->1 and 1->0
function magma:ui/swap
# Stores result back into storage
execute store result storage magma formation[35] int 1 run scoreboard players get bool magma

# Putting correct item
execute if score bool magma matches 1 run data modify block ~ ~ ~ Items append value {Slot:19b,id:"minecraft:magma_block",Count:1b}
execute if score bool magma matches 0 run data modify block ~ ~ ~ Items append value {Slot:19b,id:"minecraft:obsidian",Count:1b}
