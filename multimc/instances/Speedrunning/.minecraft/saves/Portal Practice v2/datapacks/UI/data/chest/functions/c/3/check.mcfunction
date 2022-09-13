# Checking which slot changed
execute if data block ~ ~ ~ Items[{Slot:13b}] run clear @p
execute unless data block ~ ~ ~ Items[{Slot:13b}] run function chest:c/3/main

function chest:c/3/base