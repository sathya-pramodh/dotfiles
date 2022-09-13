execute positioned 0 49 10 unless data block ~ ~ ~ Items[9] run function chest:c/1/check
execute positioned 0 49 10 if data block ~ ~ ~ Items[10] run function chest:c/1/base

# Lava portal
execute positioned -10 49 4 unless data block ~ ~ ~ Items[9] run function chest:c/2/check
execute positioned -10 49 4 if data block ~ ~ ~ Items[10] run function chest:c/2/base

# Custom Portal
execute positioned -10 49 -2 unless data block ~ ~ ~ Items[9] run function chest:c/3/check
execute positioned -10 49 -2 if data block ~ ~ ~ Items[10] run function chest:c/3/base

# Water Ravine
execute positioned -10 49 -6 unless data block ~ ~ ~ Items[9] run function chest:c/11/check
execute positioned -10 49 -6 if data block ~ ~ ~ Items[10] run function chest:c/11/base

# Lava lake
execute positioned -6 49 -10 unless data block ~ ~ ~ Items[9] run function chest:c/4/check
execute positioned -6 49 -10 if data block ~ ~ ~ Items[10] run function chest:c/4/base

# Ruined Portal
execute positioned 2 49 -10 unless data block ~ ~ ~ Items[9] run function chest:c/5/check
execute positioned 2 49 -10 if data block ~ ~ ~ Items[10] run function chest:c/5/base

# Portal Room
execute positioned 6 49 -10 unless data block ~ ~ ~ Items[9] run function chest:c/6/check
execute positioned 6 49 -10 if data block ~ ~ ~ Items[10] run function chest:c/6/base

# Blind
execute positioned 10 49 -6 unless data block ~ ~ ~ Items[9] run function chest:c/7/check
execute positioned 10 49 -6 if data block ~ ~ ~ Items[10] run function chest:c/7/base

# Ironless
execute positioned 10 49 -2 unless data block ~ ~ ~ Items[9] run function chest:c/8/check
execute positioned 10 49 -2 if data block ~ ~ ~ Items[10] run function chest:c/8/base

# Cave
execute positioned 10 49 2 unless data block ~ ~ ~ Items[9] run function chest:c/9/check
execute positioned 10 49 2 if data block ~ ~ ~ Items[10] run function chest:c/9/base

# Blacksmith
execute positioned 10 49 6 unless data block ~ ~ ~ Items[9] run function chest:c/10/check
execute positioned 10 49 6 if data block ~ ~ ~ Items[10] run function chest:c/10/base


# Ticking
execute if score chest tick matches 1 run schedule function chest:tick 1t