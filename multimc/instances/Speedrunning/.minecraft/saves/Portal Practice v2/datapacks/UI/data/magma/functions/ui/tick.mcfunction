execute positioned -44 15 36 unless data block ~ ~ ~ Items[21] run function magma:ui/right_c
execute positioned -44 15 36 if data block ~ ~ ~ Items[22] run function magma:ui/clear

execute positioned -44 15 35 unless data block ~ ~ ~ Items[21] run function magma:ui/left_c
execute positioned -44 15 35 if data block ~ ~ ~ Items[22] run function magma:ui/clear

execute if score magma tick matches 1 run schedule function magma:ui/tick 1t