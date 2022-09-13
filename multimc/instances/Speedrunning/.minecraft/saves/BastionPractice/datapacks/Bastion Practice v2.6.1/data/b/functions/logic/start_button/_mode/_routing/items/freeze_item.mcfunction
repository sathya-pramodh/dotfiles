execute at @s run playsound block.chain.place player @s ~ ~ ~ 0.5 1
execute at @s run playsound block.glass.break player @s ~ ~ ~ 0.3 0.9
scoreboard players add freeze mode 1

function b:logic/start_button/_mode/_routing/items/_freeze/freeze

execute if score freeze mode matches 2.. run scoreboard players set freeze mode 0