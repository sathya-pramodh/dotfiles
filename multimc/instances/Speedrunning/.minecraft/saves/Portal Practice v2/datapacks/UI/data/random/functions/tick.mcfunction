execute positioned -2 49 -10 unless data block ~ ~ ~ Items[11] run function random:check
execute positioned -2 49 -10 if data block ~ ~ ~ Items[12] run function random:base

execute if score random tick matches 1 run schedule function random:tick 1t