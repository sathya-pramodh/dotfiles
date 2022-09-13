# # Modifying and saving
execute if score modify8 chest matches 0 run function chest:c/8/modify
execute if score modify8 chest matches 1 run function chest:c/8/save

# Swapping the numbers
scoreboard players remove modify8 chest 1
scoreboard players operation modify8 chest *= -1 num