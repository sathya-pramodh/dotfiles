# Wait for player to place end crystal
execute if score mode Settings matches 3 positioned 29 101 0 unless entity @e[type=end_crystal,distance=..5] run title @p times 0 20 0	
execute if score mode Settings matches 3 positioned 29 101 0 unless entity @e[type=end_crystal,distance=..5] run title @p title {"color":"gold","bold":"true","text":"Right Click"}
execute if score mode Settings matches 3 in minecraft:the_end positioned 29 101 0 if entity @e[type=end_crystal,distance=..5] run function end-practice:perch_practice/perch_practice_resummon_wait

# Wait for dragon to summon
stopsound @a hostile minecraft:entity.ender_dragon.growl
#stopsound @a block minecraft:entity.generic.explode
execute if score mode Settings matches 4 run scoreboard players remove summonTime Time 1
execute if score mode Settings matches 4 if score summonTime Time matches 600 run title @p title {"color":"dark_aqua","bold":true,"text":"30"}
execute if score mode Settings matches 4 if score summonTime Time matches 580 run title @p title {"color":"dark_aqua","bold":true,"text":"29"}
execute if score mode Settings matches 4 if score summonTime Time matches 560 run title @p title {"color":"dark_aqua","bold":true,"text":"28"}
execute if score mode Settings matches 4 if score summonTime Time matches 540 run title @p title {"color":"dark_aqua","bold":true,"text":"27"}
execute if score mode Settings matches 4 if score summonTime Time matches 520 run title @p title {"color":"dark_aqua","bold":true,"text":"26"}
execute if score mode Settings matches 4 if score summonTime Time matches 500 run title @p title {"color":"dark_aqua","bold":true,"text":"25"}
execute if score mode Settings matches 4 if score summonTime Time matches 480 run title @p title {"color":"dark_aqua","bold":true,"text":"24"}
execute if score mode Settings matches 4 if score summonTime Time matches 460 run title @p title {"color":"dark_aqua","bold":true,"text":"23"}
execute if score mode Settings matches 4 if score summonTime Time matches 440 run title @p title {"color":"dark_aqua","bold":true,"text":"22"}
execute if score mode Settings matches 4 if score summonTime Time matches 420 run title @p title {"color":"dark_aqua","bold":true,"text":"21"}
execute if score mode Settings matches 4 if score summonTime Time matches 400 run title @p title {"color":"dark_aqua","bold":true,"text":"20"}
execute if score mode Settings matches 4 if score summonTime Time matches 380 run title @p title {"color":"dark_aqua","bold":true,"text":"19"}
execute if score mode Settings matches 4 if score summonTime Time matches 360 run title @p title {"color":"dark_aqua","bold":true,"text":"18"}
execute if score mode Settings matches 4 if score summonTime Time matches 340 run title @p title {"color":"dark_aqua","bold":true,"text":"17"}
execute if score mode Settings matches 4 if score summonTime Time matches 320 run title @p title {"color":"dark_aqua","bold":true,"text":"16"}
execute if score mode Settings matches 4 if score summonTime Time matches 300 run title @p title {"color":"dark_aqua","bold":true,"text":"15"}
execute if score mode Settings matches 4 if score summonTime Time matches 280 run title @p title {"color":"dark_aqua","bold":true,"text":"14"}
execute if score mode Settings matches 4 if score summonTime Time matches 260 run title @p title {"color":"dark_aqua","bold":true,"text":"13"}
execute if score mode Settings matches 4 if score summonTime Time matches 240 run title @p title {"color":"dark_aqua","bold":true,"text":"12"}
execute if score mode Settings matches 4 if score summonTime Time matches 220 run title @p title {"color":"dark_aqua","bold":true,"text":"11"}
execute if score mode Settings matches 4 if score summonTime Time matches 200 run title @p title {"color":"dark_aqua","bold":true,"text":"10"}
execute if score mode Settings matches 4 if score summonTime Time matches 180 run title @p title {"color":"dark_aqua","bold":true,"text":"9"}
execute if score mode Settings matches 4 if score summonTime Time matches 160 run title @p title {"color":"dark_aqua","bold":true,"text":"8"}
execute if score mode Settings matches 4 if score summonTime Time matches 140 run title @p title {"color":"dark_aqua","bold":true,"text":"7"}
execute if score mode Settings matches 4 if score summonTime Time matches 120 run title @p title {"color":"dark_aqua","bold":true,"text":"6"}
execute if score mode Settings matches 4 if score summonTime Time matches 100 positioned as @p run playsound minecraft:block.note_block.pling ambient @p ~ ~ ~ 5 1
execute if score mode Settings matches 4 if score summonTime Time matches 100 run title @p title {"color":"dark_aqua","bold":true,"text":"5"}
execute if score mode Settings matches 4 if score summonTime Time matches 80 positioned as @p run playsound minecraft:block.note_block.pling ambient @p ~ ~ ~ 5 1
execute if score mode Settings matches 4 if score summonTime Time matches 80 run title @p title {"color":"dark_aqua","bold":true,"text":"4"}
execute if score mode Settings matches 4 if score summonTime Time matches 60 positioned as @p run playsound minecraft:block.note_block.pling ambient @p ~ ~ ~ 5 1
execute if score mode Settings matches 4 if score summonTime Time matches 60 run title @p title {"color":"dark_aqua","bold":true,"text":"3"}
execute if score mode Settings matches 4 if score summonTime Time matches 40 positioned as @p run playsound minecraft:block.note_block.pling ambient @p ~ ~ ~ 5 1
execute if score mode Settings matches 4 if score summonTime Time matches 40 run title @p title {"color":"dark_aqua","bold":true,"text":"2"}
execute if score mode Settings matches 4 if score summonTime Time matches 20 positioned as @p run playsound minecraft:block.note_block.pling ambient @p ~ ~ ~ 5 2
execute if score mode Settings matches 4 if score summonTime Time matches 20 run title @p title {"color":"dark_aqua","bold":true,"text":"1"}
execute if score mode Settings matches 4 if score summonTime Time matches 0 run title @p title {"color":"dark_aqua","bold":true,"text":""}
execute if score mode Settings matches 4 if score summonTime Time matches 0 run function end-practice:perch_practice/perch_practice_start_vanilla