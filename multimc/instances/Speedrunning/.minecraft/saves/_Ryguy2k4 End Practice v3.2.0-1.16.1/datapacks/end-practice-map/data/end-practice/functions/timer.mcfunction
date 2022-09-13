# Master Time Number
scoreboard players add totalTicks Time 1

# Calculate Tick
scoreboard players operation tick Time = totalTicks Time
scoreboard players operation tick Time %= 20 CONSTANT

# Calculate Second
scoreboard players operation second Time = totalTicks Time
scoreboard players operation second Time /= 20 CONSTANT
scoreboard players operation second Time %= 60 CONSTANT

# Calculate Minute
scoreboard players operation minute Time = totalTicks Time
scoreboard players operation minute Time /= 20 CONSTANT
scoreboard players operation minute Time /= 60 CONSTANT