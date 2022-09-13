# # Modifying and saving
execute if score modify3 chest matches 0 run function chest:c/3/modify
execute if score modify3 chest matches 1 run function chest:c/3/save

# Swapping the numbers
scoreboard players remove modify3 chest 1
scoreboard players operation modify3 chest *= -1 num