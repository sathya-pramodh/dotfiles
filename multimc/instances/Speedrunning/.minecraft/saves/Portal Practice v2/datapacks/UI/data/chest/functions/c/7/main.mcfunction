# # Modifying and saving
execute if score modify7 chest matches 0 run function chest:c/7/modify
execute if score modify7 chest matches 1 run function chest:c/7/save

# Swapping the numbers
scoreboard players remove modify7 chest 1
scoreboard players operation modify7 chest *= -1 num