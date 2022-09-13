# # Modifying and saving
execute if score modify9 chest matches 0 run function chest:c/9/modify
execute if score modify9 chest matches 1 run function chest:c/9/save

# Swapping the numbers
scoreboard players remove modify9 chest 1
scoreboard players operation modify9 chest *= -1 num