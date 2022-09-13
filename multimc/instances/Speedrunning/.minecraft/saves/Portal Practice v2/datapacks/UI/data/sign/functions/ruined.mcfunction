tag @e[tag=current] remove current
execute unless entity @e[tag=ruined,distance=..2] run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["ruined","nokill"],CustomNameVisible:1b}
tag @e[tag=ruined,distance=..2] add current

# setblock 0 45 -21 redstone_block
# schedule function armor:air 1t