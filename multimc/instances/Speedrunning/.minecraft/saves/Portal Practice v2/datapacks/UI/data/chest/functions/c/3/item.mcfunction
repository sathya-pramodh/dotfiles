# Setting correct item
execute if score modify3 chest matches 0 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:hopper_minecart",Count:1b,tag:{display:{Name:'{"text":"Modify this Loadout","color":"dark_green","bold":true,"italic":false}'}}}
execute if score modify3 chest matches 1 run data modify block ~ ~ ~ Items append value {Slot:13b,id:"minecraft:chest_minecart",Count:1b,tag:{display:{Name:'{"text":"Save this Loadout","color":"gold","bold":true,"italic":false}'}}}
