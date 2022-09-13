summon area_effect_cloud 0 0 0 {Tags:["random_h"]}
execute store result entity @e[tag=random_h,limit=1] Pos[0] double 0.001 run scoreboard players get x rng
execute store result entity @e[tag=random_h,limit=1] Pos[1] double 0.001 run scoreboard players get y rng
execute store result entity @e[tag=random_h,limit=1] Pos[2] double 0.001 run scoreboard players get z rng
execute positioned as @e[tag=random_h,limit=1] run summon minecraft:ender_dragon ~ ~ ~ {DragonPhase:3}
kill @e[tag=random_h]