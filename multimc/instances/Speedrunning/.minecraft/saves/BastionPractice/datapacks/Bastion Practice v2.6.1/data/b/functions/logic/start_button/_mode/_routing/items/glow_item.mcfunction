execute at @s run playsound item.trident.return player @s ~ ~ ~ 1 1.5
scoreboard players add glow mode 1

function b:logic/start_button/_mode/_routing/items/_glow/glow

execute if score glow mode matches 2.. run scoreboard players set glow mode 0