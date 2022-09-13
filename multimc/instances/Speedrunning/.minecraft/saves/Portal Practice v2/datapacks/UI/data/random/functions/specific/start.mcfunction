# Reloading random chest
execute positioned -2 49 -10 run function random:base

# Current
scoreboard players set current random 1

# Starting everything
schedule function random:button/start 2t