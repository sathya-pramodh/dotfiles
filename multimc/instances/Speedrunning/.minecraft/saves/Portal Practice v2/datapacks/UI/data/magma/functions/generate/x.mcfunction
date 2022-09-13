# Setting x to 0 again
scoreboard players set x magma 0

# Moving forward one
tp @s ~-7 ~ ~1
scoreboard players add z magma 1
execute if score z magma matches 6 run scoreboard players set generate magma 0
