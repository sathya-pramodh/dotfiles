execute at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 1 1.2

scoreboard players operation #current rng = bastion_seed bastiongen

execute as @e[type=piglin,tag=piglin] at @s run tp @s ~ -1000 ~
execute as @e[type=hoglin,tag=hoglin] at @s run tp @s ~ -1000 ~
execute as @e[type=magma_cube] at @s run tp @s ~ -1000 ~

execute at @e[type=area_effect_cloud, tag=bastion_origin, limit=1, sort=nearest] run function b:logic/start_button/generate_bastion/generate
kill @e[type=item]

function b:logic/start_button/_mode/_routing/items/_freeze/freeze
function b:logic/start_button/_mode/_routing/items/_glow/glow