# Putting the first item into a different storage so I can check the id on it
data modify storage magma id set from storage magma chest[0]

# Removing first item
data remove storage magma chest[0]

# Storing result into a scoreboard
execute store result score bool magma if data storage magma id{id:"minecraft:magma_block"}
execute if data storage magma id{id:"minecraft:green_concrete"} run scoreboard players set bool magma 2
execute if data storage magma id{id:"minecraft:red_concrete"} run scoreboard players set bool magma 2

# Appending correct value into magma formation
execute if score bool magma matches 1 run data modify storage magma formation append value 1
execute if score bool magma matches 0 run data modify storage magma formation append value 0

# Second half of the chest
execute unless data storage magma chest[0] if score half magma matches 1 run function magma:read/half

# Continues if there are more items
execute if data storage magma chest[0] run function magma:read/repeat