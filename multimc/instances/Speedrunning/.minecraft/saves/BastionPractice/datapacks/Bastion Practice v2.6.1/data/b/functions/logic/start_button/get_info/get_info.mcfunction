scoreboard players set Gold _gold 0
scoreboard players set Piglins _piglins 0

execute as @e[type=piglin, tag=piglin] run function b:logic/start_button/get_info/_get_info/get_piglins
execute as @e[type=piglin, tag=piglin, nbt={HandItems:[{id:"minecraft:gold_ingot"}]}] run function b:logic/start_button/get_info/_get_info/get_bartering
execute as @e[type=item, nbt={Item:{id:"minecraft:gold_ingot"}}] run function b:logic/start_button/get_info/_get_info/get_gold

scoreboard players operation Piglins info = Piglins _piglins
scoreboard players operation Barters info = Barters _bartering
scoreboard players operation Gold info = Gold _gold