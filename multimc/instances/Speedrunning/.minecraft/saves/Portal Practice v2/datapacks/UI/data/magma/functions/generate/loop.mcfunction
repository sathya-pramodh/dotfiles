# Storing into scoreboard
execute store result score bool magma run data get storage magma temp[-1]
data remove storage magma temp[-1]

# Setting proper block
execute if score bool magma matches 0 at @s run setblock ~ ~ ~ obsidian
execute if score bool magma matches 1 at @s run setblock ~ ~ ~ magma_block

# Moving and adding
execute at @s run tp @s ~1 ~ ~
scoreboard players add x magma 1

# If x matches 6, move to the next line
execute if score x magma matches 7 at @s run function magma:generate/x


# Loop
execute if score generate magma matches 1 at @s run function magma:generate/loop