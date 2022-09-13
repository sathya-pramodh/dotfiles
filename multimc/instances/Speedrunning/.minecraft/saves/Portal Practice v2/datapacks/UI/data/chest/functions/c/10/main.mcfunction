# # Modifying and saving
execute if score modify10 chest matches 0 run function chest:c/10/modify
execute if score modify10 chest matches 1 run function chest:c/10/save

# Swapping the numbers
scoreboard players remove modify10 chest 1
scoreboard players operation modify10 chest *= -1 num