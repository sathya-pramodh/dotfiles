execute if score glow mode matches 2.. run schedule clear b:logic/start_button/_mode/_routing/items/_glow/glow_effect
execute if score glow mode matches 2.. run execute as @e[type=piglin,tag=piglin] run data modify entity @s Glowing set value 0
execute if score glow mode matches 2.. run title @s actionbar ""

execute if score glow mode matches 1 run execute as @e[type=piglin,tag=piglin] run data modify entity @s Glowing set value 1
execute if score glow mode matches 1 run function b:logic/start_button/_mode/_routing/items/_glow/glow_effect