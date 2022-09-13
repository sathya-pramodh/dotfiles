execute at @a as @e[type=piglin,tag=piglin,distance=..16] run team join anger_range @s
execute at @a as @e[type=piglin,tag=piglin,distance=16..] run team leave @s
execute at @a store result score piglins mode if entity @e[type=piglin,tag=piglin,distance=..16]
title @a actionbar ["",{"text":"Piglins: ","color":"white"},{"score":{"name":"piglins","objective":"mode"},"color":"gold"}]

execute if score glow mode matches 1 run schedule function b:logic/start_button/_mode/_routing/items/_glow/glow_effect 1t