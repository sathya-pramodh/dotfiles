# # Modifying and saving
execute if score modify4 chest matches 0 run function chest:c/4/modify
execute if score modify4 chest matches 1 run function chest:c/4/save

# Swapping the numbers
scoreboard players remove modify4 chest 1
scoreboard players operation modify4 chest *= -1 num