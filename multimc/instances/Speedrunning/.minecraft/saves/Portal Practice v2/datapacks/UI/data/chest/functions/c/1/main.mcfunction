# # Modifying and saving
execute if score modify1 chest matches 0 run function chest:c/1/modify
execute if score modify1 chest matches 1 run function chest:c/1/save

# Swapping the numbers
scoreboard players remove modify1 chest 1
scoreboard players operation modify1 chest *= -1 num