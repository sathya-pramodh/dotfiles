kill @e[tag=depth]
summon area_effect_cloud -47 9 47 {Tags:["depth"]}
fill -41 9 41 -47 1 47 stone
scoreboard players operation lava temp = lava magma
execute as @e[tag=depth] at @s run function magma:ui/lava/depth/loop