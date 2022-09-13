# # Modifying and saving
execute if score modify5 chest matches 0 run function chest:c/5/modify
execute if score modify5 chest matches 1 run function chest:c/5/save

# Swapping the numbers
scoreboard players remove modify5 chest 1
scoreboard players operation modify5 chest *= -1 num