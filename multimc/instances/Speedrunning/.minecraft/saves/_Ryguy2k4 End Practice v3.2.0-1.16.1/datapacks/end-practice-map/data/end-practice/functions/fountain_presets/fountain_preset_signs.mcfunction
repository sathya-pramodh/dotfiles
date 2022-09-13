# Place save signs
execute if block 65 22 19 minecraft:air run setblock 65 22 19 minecraft:crimson_wall_sign[facing=north]
execute if block 66 22 20 minecraft:air run setblock 66 22 20 minecraft:crimson_wall_sign[facing=east]
execute if block 65 22 21 minecraft:air run setblock 65 22 21 minecraft:crimson_wall_sign[facing=south]
execute if block 64 22 20 minecraft:air run setblock 64 22 20 minecraft:crimson_wall_sign[facing=west]
execute if block 65 22 19 minecraft:crimson_wall_sign run data merge block 65 22 19 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute in the_end run function end-practice:fountain_presets/fountain_preset_save"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"white"}',Text3:'{"text":"SAVE","bold":true,"color":"white"}'}
execute if block 66 22 20 minecraft:crimson_wall_sign run data merge block 66 22 20 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute in the_end run function end-practice:fountain_presets/fountain_preset_save"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"white"}',Text3:'{"text":"SAVE","bold":true,"color":"white"}'}
execute if block 65 22 21 minecraft:crimson_wall_sign run data merge block 65 22 21 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute in the_end run function end-practice:fountain_presets/fountain_preset_save"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"white"}',Text3:'{"text":"SAVE","bold":true,"color":"white"}'}
execute if block 64 22 20 minecraft:crimson_wall_sign run data merge block 64 22 20 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute in the_end run function end-practice:fountain_presets/fountain_preset_save"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"white"}',Text3:'{"text":"SAVE","bold":true,"color":"white"}'}

# Place save signs
execute if block 65 22 -1 minecraft:air run setblock 65 22 -1 minecraft:crimson_wall_sign[facing=north]
execute if block 66 22 0 minecraft:air run setblock 66 22 0 minecraft:crimson_wall_sign[facing=east]
execute if block 65 22 1 minecraft:air run setblock 65 22 1 minecraft:crimson_wall_sign[facing=south]
execute if block 64 22 0 minecraft:air run setblock 64 22 0 minecraft:crimson_wall_sign[facing=west]
execute if block 65 22 -1 minecraft:crimson_wall_sign run data merge block 65 22 -1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute in the_end run function end-practice:fountain_presets/fountain_preset_save"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"white"}',Text3:'{"text":"SAVE","bold":true,"color":"white"}'}
execute if block 66 22 0 minecraft:crimson_wall_sign run data merge block 66 22 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute in the_end run function end-practice:fountain_presets/fountain_preset_save"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"white"}',Text3:'{"text":"SAVE","bold":true,"color":"white"}'}
execute if block 65 22 1 minecraft:crimson_wall_sign run data merge block 65 22 1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute in the_end run function end-practice:fountain_presets/fountain_preset_save"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"white"}',Text3:'{"text":"SAVE","bold":true,"color":"white"}'}
execute if block 64 22 0 minecraft:crimson_wall_sign run data merge block 64 22 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute in the_end run function end-practice:fountain_presets/fountain_preset_save"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"white"}',Text3:'{"text":"SAVE","bold":true,"color":"white"}'}

# Place save signs
execute if block 65 22 -21 minecraft:air run setblock 65 22 -21 minecraft:crimson_wall_sign[facing=north]
execute if block 66 22 -20 minecraft:air run setblock 66 22 -20 minecraft:crimson_wall_sign[facing=east]
execute if block 65 22 -19 minecraft:air run setblock 65 22 -19 minecraft:crimson_wall_sign[facing=south]
execute if block 64 22 -20 minecraft:air run setblock 64 22 -20 minecraft:crimson_wall_sign[facing=west]
execute if block 65 22 -21 minecraft:crimson_wall_sign run data merge block 65 22 -21 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute in the_end run function end-practice:fountain_presets/fountain_preset_save"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"white"}',Text3:'{"text":"SAVE","bold":true,"color":"white"}'}
execute if block 66 22 -20 minecraft:crimson_wall_sign run data merge block 66 22 -20 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute in the_end run function end-practice:fountain_presets/fountain_preset_save"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"white"}',Text3:'{"text":"SAVE","bold":true,"color":"white"}'}
execute if block 65 22 -19 minecraft:crimson_wall_sign run data merge block 65 22 -19 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute in the_end run function end-practice:fountain_presets/fountain_preset_save"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"white"}',Text3:'{"text":"SAVE","bold":true,"color":"white"}'}
execute if block 64 22 -20 minecraft:crimson_wall_sign run data merge block 64 22 -20 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute in the_end run function end-practice:fountain_presets/fountain_preset_save"}}',Text2:'{"text":"CLICK TO","bold":true,"color":"white"}',Text3:'{"text":"SAVE","bold":true,"color":"white"}'}

# Facing Settings
execute if score f1pfacing Settings matches 4.. run scoreboard players set f1pfacing Settings 0
execute if score f2pfacing Settings matches 4.. run scoreboard players set f2pfacing Settings 0
execute if score f3pfacing Settings matches 4.. run scoreboard players set f3pfacing Settings 0

execute if block 68 23 20 minecraft:air run setblock 68 23 20 minecraft:crimson_sign[rotation=12]
execute if block 68 23 0 minecraft:air run setblock 68 23 0 minecraft:crimson_sign[rotation=12]
execute if block 68 23 -20 minecraft:air run setblock 68 23 -20 minecraft:crimson_sign[rotation=12]

execute if score f1pfacing Settings matches 0 run data merge block 68 23 20 {Text1:'{"text":"Facing","clickEvent":{"action":"run_command","value":"scoreboard players add f1pfacing Settings 1"},"bold":true,"color":"white"}',Text2:'{"text":""}',Text3:'{"text":"North","color":"yellow"}'}
execute if score f1pfacing Settings matches 1 run data merge block 68 23 20 {Text1:'{"text":"Facing","clickEvent":{"action":"run_command","value":"scoreboard players add f1pfacing Settings 1"},"bold":true,"color":"white"}',Text2:'{"text":""}',Text3:'{"text":"East","color":"yellow"}'}
execute if score f1pfacing Settings matches 2 run data merge block 68 23 20 {Text1:'{"text":"Facing","clickEvent":{"action":"run_command","value":"scoreboard players add f1pfacing Settings 1"},"bold":true,"color":"white"}',Text2:'{"text":""}',Text3:'{"text":"South","color":"yellow"}'}
execute if score f1pfacing Settings matches 3 run data merge block 68 23 20 {Text1:'{"text":"Facing","clickEvent":{"action":"run_command","value":"scoreboard players add f1pfacing Settings 1"},"bold":true,"color":"white"}',Text2:'{"text":""}',Text3:'{"text":"West","color":"yellow"}'}

execute if score f2pfacing Settings matches 0 run data merge block 68 23 0 {Text1:'{"text":"Facing","clickEvent":{"action":"run_command","value":"scoreboard players add f2pfacing Settings 1"},"bold":true,"color":"white"}',Text2:'{"text":""}',Text3:'{"text":"North","color":"yellow"}'}
execute if score f2pfacing Settings matches 1 run data merge block 68 23 0 {Text1:'{"text":"Facing","clickEvent":{"action":"run_command","value":"scoreboard players add f2pfacing Settings 1"},"bold":true,"color":"white"}',Text2:'{"text":""}',Text3:'{"text":"East","color":"yellow"}'}
execute if score f2pfacing Settings matches 2 run data merge block 68 23 0 {Text1:'{"text":"Facing","clickEvent":{"action":"run_command","value":"scoreboard players add f2pfacing Settings 1"},"bold":true,"color":"white"}',Text2:'{"text":""}',Text3:'{"text":"South","color":"yellow"}'}
execute if score f2pfacing Settings matches 3 run data merge block 68 23 0 {Text1:'{"text":"Facing","clickEvent":{"action":"run_command","value":"scoreboard players add f2pfacing Settings 1"},"bold":true,"color":"white"}',Text2:'{"text":""}',Text3:'{"text":"West","color":"yellow"}'}

execute if score f3pfacing Settings matches 0 run data merge block 68 23 -20 {Text1:'{"text":"Facing","clickEvent":{"action":"run_command","value":"scoreboard players add f3pfacing Settings 1"},"bold":true,"color":"white"}',Text2:'{"text":""}',Text3:'{"text":"North","color":"yellow"}'}
execute if score f3pfacing Settings matches 1 run data merge block 68 23 -20 {Text1:'{"text":"Facing","clickEvent":{"action":"run_command","value":"scoreboard players add f3pfacing Settings 1"},"bold":true,"color":"white"}',Text2:'{"text":""}',Text3:'{"text":"East","color":"yellow"}'}
execute if score f3pfacing Settings matches 2 run data merge block 68 23 -20 {Text1:'{"text":"Facing","clickEvent":{"action":"run_command","value":"scoreboard players add f3pfacing Settings 1"},"bold":true,"color":"white"}',Text2:'{"text":""}',Text3:'{"text":"South","color":"yellow"}'}
execute if score f3pfacing Settings matches 3 run data merge block 68 23 -20 {Text1:'{"text":"Facing","clickEvent":{"action":"run_command","value":"scoreboard players add f3pfacing Settings 1"},"bold":true,"color":"white"}',Text2:'{"text":""}',Text3:'{"text":"West","color":"yellow"}'}
