# # Modifying and saving
execute if score modify2 chest matches 0 run function chest:c/2/modify
execute if score modify2 chest matches 1 run function chest:c/2/save

# Swapping the numbers
scoreboard players remove modify2 chest 1
scoreboard players operation modify2 chest *= -1 num