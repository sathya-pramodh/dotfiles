advancement revoke @s only b:start_button

gamemode creative @s

function b:logic/start_button/find_valid_location

function b:logic/start_button/get_bastion_id/get_bastion_id
function b:logic/start_button/get_bastion_rotation

kill @e[type=piglin, tag=piglin]
kill @e[type=item]

execute at @s run function b:logic/start_button/forceload_bastion/forceload
scoreboard players operation bastion_seed bastiongen = #current rng
execute at @s run function b:logic/start_button/generate_bastion/generate

function b:logic/start_button/spawnpoint
function b:logic/start_button/mode
function b:logic/reset_method/reset_method

scoreboard players set #running mode 1
scoreboard players set Barters _bartering 0
scoreboard players set glow mode 0
scoreboard players set freeze mode 0

title @s reset
scoreboard objectives setdisplay sidebar info