# Ensuring a data cloud is already there
execute positioned ~ ~ ~ unless entity @e[tag=data,distance=..2] run function timer:save/new
function cave:player/start