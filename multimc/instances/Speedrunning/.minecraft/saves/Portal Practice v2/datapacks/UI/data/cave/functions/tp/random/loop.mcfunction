# Removing 1 from the score
scoreboard players remove rand r_cave 1
# If the score if zero, copy the data over
execute if score rand r_cave matches 0 run data modify storage main pos set from storage main copy[0]
# Removing top data
data remove storage main copy[0]
# If we still haven't hit 0, run this again
execute if score rand r_cave matches 1.. run function cave:tp/random/loop