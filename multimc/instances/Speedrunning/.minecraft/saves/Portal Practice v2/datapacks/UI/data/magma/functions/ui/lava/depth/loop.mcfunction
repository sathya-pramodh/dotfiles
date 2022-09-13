fill -47 ~ 47 -41 ~ 41 lava
tp @s ~ ~-1 ~
scoreboard players remove lava temp 1
execute unless score lava temp matches 0 at @s run function magma:ui/lava/depth/loop
execute if score lava temp matches ..0 run function magma:ui/lava/depth/end