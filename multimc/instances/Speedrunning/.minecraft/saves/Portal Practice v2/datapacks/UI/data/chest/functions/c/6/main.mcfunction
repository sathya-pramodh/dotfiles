# # Modifying and saving
execute if score modify6 chest matches 0 run function chest:c/6/modify
execute if score modify6 chest matches 1 run function chest:c/6/save

# Swapping the numbers
scoreboard players remove modify6 chest 1
scoreboard players operation modify6 chest *= -1 num