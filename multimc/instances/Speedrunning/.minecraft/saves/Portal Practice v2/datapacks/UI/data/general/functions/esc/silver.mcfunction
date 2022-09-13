scoreboard players remove silver portal 1
scoreboard players operation silver portal *= -1 num

execute if score silver portal matches 1 run data modify block 3 69 -2 Text3 set value '{"text":"On","color":"green","bold":true,"italic":false}'
execute if score silver portal matches 0 run data modify block 3 69 -2 Text3 set value '{"text":"Off","color":"red","bold":true,"italic":false}'