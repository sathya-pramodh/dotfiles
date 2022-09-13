# # Modifying and saving
execute if score modify11 chest matches 0 run function chest:c/11/modify
execute if score modify11 chest matches 1 run function chest:c/11/save

# Swapping the numbers
scoreboard players remove modify11 chest 1
scoreboard players operation modify11 chest *= -1 num