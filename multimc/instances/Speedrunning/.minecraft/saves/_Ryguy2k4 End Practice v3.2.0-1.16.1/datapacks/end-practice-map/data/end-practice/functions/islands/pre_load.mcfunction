kill @e[type=minecraft:end_crystal]
execute if score island Settings matches 0..4 run scoreboard players operation island rng = island Settings
execute if score island Settings matches 5 run function end-practice:rng/random_island
execute if score startNode Settings matches 0..1 run scoreboard players operation node rng = startNode Settings
execute if score startNode Settings matches 2 run function end-practice:rng/random_node

# Quadrant +/+
setblock 0 79 0 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock 0 31 0 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock 48 31 0 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock 96 31 0 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock 0 31 48 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock 48 31 48 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock 0 31 96 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}

# Quadrant -/+
setblock -48 79 0 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock -48 31 0 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock -96 31 0 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock -48 31 48 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock -96 31 48 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock -48 31 96 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}

# Quadrant -/-
setblock -48 79 -48 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock -48 31 -48 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock -96 31 -48 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock -48 31 -96 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock -96 31 -96 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock -48 31 -144 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}

# Quadrant +/-
setblock 0 79 -48 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock 0 31 -48 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock 48 31 -48 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock 96 31 -48 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock 0 31 -96 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock 48 31 -96 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}
setblock 0 31 -144 minecraft:structure_block{"mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":1,"posZ":0}