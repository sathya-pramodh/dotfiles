execute if score temp random matches 0 run setblock 37 61 -18 redstone_block
execute if score temp random matches 0 positioned -6 51.5 -9 run function sign:start
scoreboard players remove temp random 1

data modify block ~ ~ ~ Text2 set value '{"text":"Ready"'