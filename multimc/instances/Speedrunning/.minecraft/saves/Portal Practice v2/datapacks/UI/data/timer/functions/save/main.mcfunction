# Ravine portals
execute if score the portal matches 1..2 positioned ~-12 ~2 ~ as @e[tag=data,sort=nearest,limit=1] run function timer:save/cloud
execute if score the portal matches 3 positioned ~20 ~2 ~ as @e[tag=data,sort=nearest,limit=1] run function timer:save/cloud
execute if score the portal matches 4 positioned ~ ~2 ~20 as @e[tag=data,sort=nearest,limit=1] run function timer:save/cloud
execute if score the portal matches 5 positioned ~-15 ~2 ~ as @e[tag=data,sort=nearest,limit=1] run function timer:save/cloud
execute if score the portal matches 6 positioned ~ ~2 ~20 as @e[tag=data,sort=nearest,limit=1] run function timer:save/cloud
# Ruined portals
execute if score the portal matches 7 positioned ~13 ~ ~-13 as @e[tag=data,sort=nearest,limit=1] run function timer:save/cloud
execute if score the portal matches 8 positioned ~ ~ ~-15 as @e[tag=data,sort=nearest,limit=1] run function timer:save/cloud
execute if score the portal matches 9 positioned ~18 ~ ~-18 as @e[tag=data,sort=nearest,limit=1] run function timer:save/cloud
execute if score the portal matches 10 positioned ~-20 ~ ~-20 as @e[tag=data,sort=nearest,limit=1] run function timer:save/cloud
# Cave portals
execute if score the portal matches 11.. positioned ~20 ~2 ~ as @e[tag=data,sort=nearest,limit=1] run function timer:save/cloud
# Random Cave
execute if score the portal matches 20 positioned -21 51 -5 as @e[tag=data,sort=nearest,limit=1] run function timer:save/cloud