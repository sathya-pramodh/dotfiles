# Clearing player
clear @p

# Clearing chest
data modify block ~ ~ ~ Items set value []

# Setting the correct item
execute if score blind random matches 0 run data modify block ~ ~ ~ Items append value {Slot:3b,id:"minecraft:nether_brick",Count:1b,tag:{display:{Name:'{"text":"Blind Portal","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"Off","color":"dark_red","bold":true,"italic":false}']}}}
execute if score blind random matches 1 run data modify block ~ ~ ~ Items append value {Slot:3b,id:"minecraft:nether_brick",Count:1b,tag:{display:{Name:'{"text":"Blind Portal","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"On","color":"green","bold":true,"italic":false}']}}}

execute if score ruined random matches 0 run data modify block ~ ~ ~ Items append value {Slot:4b,id:"minecraft:crying_obsidian",Count:1b,tag:{display:{Name:'{"text":"Ruined Portal","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"Off","color":"dark_red","bold":true,"italic":false}']}}}
execute if score ruined random matches 1 run data modify block ~ ~ ~ Items append value {Slot:4b,id:"minecraft:crying_obsidian",Count:1b,tag:{display:{Name:'{"text":"Ruined Portal","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"On","color":"green","bold":true,"italic":false}']}}}

execute if score wood random matches 0 run data modify block ~ ~ ~ Items append value {Slot:5b,id:"minecraft:oak_planks",Count:1b,tag:{display:{Name:'{"text":"Blacksmith","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"Off","color":"dark_red","bold":true,"italic":false}']}}}
execute if score wood random matches 1 run data modify block ~ ~ ~ Items append value {Slot:5b,id:"minecraft:oak_planks",Count:1b,tag:{display:{Name:'{"text":"Blacksmith","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"On","color":"green","bold":true,"italic":false}']}}}


execute if score end random matches 0 run data modify block ~ ~ ~ Items append value {Slot:11b,id:"minecraft:end_portal_frame",Count:1b,tag:{display:{Name:'{"text":"Portal Room","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"Off","color":"dark_red","bold":true,"italic":false}']}}}
execute if score end random matches 1 run data modify block ~ ~ ~ Items append value {Slot:11b,id:"minecraft:end_portal_frame",Count:1b,tag:{display:{Name:'{"text":"Portal Room","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"On","color":"green","bold":true,"italic":false}']}}}

execute if score L random matches 0 run data modify block ~ ~ ~ Items append value {Slot:12b,id:"minecraft:firework_rocket",Count:1b,tag:{display:{Name:'{"text":"L Shape","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"Off","color":"dark_red","bold":true,"italic":false}']}}}
execute if score L random matches 1 run data modify block ~ ~ ~ Items append value {Slot:12b,id:"minecraft:firework_rocket",Count:1b,tag:{display:{Name:'{"text":"L Shape","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"On","color":"green","bold":true,"italic":false}']}}}

execute if score ironless random matches 0 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:wooden_pickaxe",Count:1b,tag:{display:{Name:'{"text":"Ironless","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"Off","color":"dark_red","bold":true,"italic":false}']}}}
execute if score ironless random matches 1 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:wooden_pickaxe",Count:1b,tag:{display:{Name:'{"text":"Ironless","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"On","color":"green","bold":true,"italic":false}']}}}

execute if score 2x1 random matches 0 run data modify block ~ ~ ~ Items append value {Slot:14b,id:"minecraft:netherite_scrap",Count:1b,tag:{display:{Name:'{"text":"2x1","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"Off","color":"dark_red","bold":true,"italic":false}']}}}
execute if score 2x1 random matches 1 run data modify block ~ ~ ~ Items append value {Slot:14b,id:"minecraft:netherite_scrap",Count:1b,tag:{display:{Name:'{"text":"2x1","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"On","color":"green","bold":true,"italic":false}']}}}

execute if score ravine random matches 0 run data modify block ~ ~ ~ Items append value {Slot:15b,id:"minecraft:kelp",Count:1b,tag:{display:{Name:'{"text":"Ravine Portal","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"Off","color":"dark_red","bold":true,"italic":false}']}}}
execute if score ravine random matches 1 run data modify block ~ ~ ~ Items append value {Slot:15b,id:"minecraft:kelp",Count:1b,tag:{display:{Name:'{"text":"Ravine Portal","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"On","color":"green","bold":true,"italic":false}']}}}


execute if score lava random matches 0 run data modify block ~ ~ ~ Items append value {Slot:20b,id:"minecraft:cobblestone",Count:1b,tag:{display:{Name:'{"text":"Lava Lake","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"Off","color":"dark_red","bold":true,"italic":false}']}}}
execute if score lava random matches 1 run data modify block ~ ~ ~ Items append value {Slot:20b,id:"minecraft:cobblestone",Count:1b,tag:{display:{Name:'{"text":"Lava Lake","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"On","color":"green","bold":true,"italic":false}']}}}

execute if score lava2 random matches 0 run data modify block ~ ~ ~ Items append value {Slot:21b,id:"minecraft:water_bucket",Count:1b,tag:{display:{Name:'{"text":"Custom Portal","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"Off","color":"dark_red","bold":true,"italic":false}']}}}
execute if score lava2 random matches 1 run data modify block ~ ~ ~ Items append value {Slot:21b,id:"minecraft:water_bucket",Count:1b,tag:{display:{Name:'{"text":"Custom Portal","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"On","color":"green","bold":true,"italic":false}']}}}

execute if score nether random matches 0 run data modify block ~ ~ ~ Items append value {Slot:23b,id:"minecraft:netherrack",Count:1b,tag:{display:{Name:'{"text":"Nether Lava Lake","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"Off","color":"dark_red","bold":true,"italic":false}']}}}
execute if score nether random matches 1 run data modify block ~ ~ ~ Items append value {Slot:23b,id:"minecraft:netherrack",Count:1b,tag:{display:{Name:'{"text":"Nether Lava Lake","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"On","color":"green","bold":true,"italic":false}']}}}

execute if score cave random matches 0 run data modify block ~ ~ ~ Items append value {Slot:24b,id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"Cave","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"Off","color":"dark_red","bold":true,"italic":false}']}}}
execute if score cave random matches 1 run data modify block ~ ~ ~ Items append value {Slot:24b,id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"Cave","color":"gray","bold":true,"italic":false,"underlined":true}',Lore:['{"text":"On","color":"green","bold":true,"italic":false}']}}}