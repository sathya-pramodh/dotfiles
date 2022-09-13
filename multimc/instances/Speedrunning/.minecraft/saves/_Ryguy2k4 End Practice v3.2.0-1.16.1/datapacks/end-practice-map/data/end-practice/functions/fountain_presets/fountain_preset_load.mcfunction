function end-practice:fountain_presets/fountain_preset_save

# Generate random number
execute if score fountain Settings matches 3 run function end-practice:rng/random_loadout

# Load preset based on selection
execute if score fountain Settings matches 0 run setblock -8 30 3 minecraft:structure_block
execute if score fountain Settings matches 0 run data merge block -8 30 3 {name:"end-practice:fountain1","mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":31,"posZ":-11}
execute if score fountain Settings matches 0 run setblock -8 31 3 minecraft:redstone_block
execute if score fountain Settings matches 0 run setblock -8 31 3 minecraft:air
execute if score fountain Settings matches 0 run setblock -8 30 3 minecraft:air

execute if score fountain Settings matches 1 run setblock -8 30 1 minecraft:structure_block
execute if score fountain Settings matches 1 run data merge block -8 30 1 {name:"end-practice:fountain2","mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":31,"posZ":-9}
execute if score fountain Settings matches 1 run setblock -8 31 1 minecraft:redstone_block
execute if score fountain Settings matches 1 run setblock -8 31 1 minecraft:air
execute if score fountain Settings matches 1 run setblock -8 30 1 minecraft:air

execute if score fountain Settings matches 2 run setblock -8 30 -1 minecraft:structure_block
execute if score fountain Settings matches 2 run data merge block -8 30 -1 {name:"end-practice:fountain3","mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":31,"posZ":-7}
execute if score fountain Settings matches 2 run setblock -8 31 -1 minecraft:redstone_block
execute if score fountain Settings matches 2 run setblock -8 31 -1 minecraft:air
execute if score fountain Settings matches 2 run setblock -8 30 -1 minecraft:air

execute if score fountain Settings matches 3 if score loadout rng matches 0 run setblock -8 30 3 minecraft:structure_block
execute if score fountain Settings matches 3 if score loadout rng matches 0 run data merge block -8 30 3 {name:"end-practice:fountain1","mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":31,"posZ":-11}
execute if score fountain Settings matches 3 if score loadout rng matches 0 run setblock -8 31 3 minecraft:redstone_block
execute if score fountain Settings matches 3 if score loadout rng matches 0 run setblock -8 31 3 minecraft:air
execute if score fountain Settings matches 3 if score loadout rng matches 0 run setblock -8 30 3 minecraft:air

execute if score fountain Settings matches 3 if score loadout rng matches 1 run setblock -8 30 1 minecraft:structure_block
execute if score fountain Settings matches 3 if score loadout rng matches 1 run data merge block -8 30 1 {name:"end-practice:fountain2","mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":31,"posZ":-9}
execute if score fountain Settings matches 3 if score loadout rng matches 1 run setblock -8 31 1 minecraft:redstone_block
execute if score fountain Settings matches 3 if score loadout rng matches 1 run setblock -8 31 1 minecraft:air
execute if score fountain Settings matches 3 if score loadout rng matches 1 run setblock -8 30 1 minecraft:air

execute if score fountain Settings matches 3 if score loadout rng matches 2 run setblock -8 30 -1 minecraft:structure_block
execute if score fountain Settings matches 3 if score loadout rng matches 2 run data merge block -8 30 -1 {name:"end-practice:fountain3","mode":"LOAD","ignoreEntities":0b,"posX":0,"posY":31,"posZ":-7}
execute if score fountain Settings matches 3 if score loadout rng matches 2 run setblock -8 31 -1 minecraft:redstone_block
execute if score fountain Settings matches 3 if score loadout rng matches 2 run setblock -8 31 -1 minecraft:air
execute if score fountain Settings matches 3 if score loadout rng matches 2 run setblock -8 30 -1 minecraft:air

setblock 3 63 0 air