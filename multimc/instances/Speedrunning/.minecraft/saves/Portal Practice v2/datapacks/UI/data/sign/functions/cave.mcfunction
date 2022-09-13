tag @e[tag=current] remove current
execute unless entity @e[tag=cave,distance=..2] run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["cave","nokill"],CustomNameVisible:1b}
tag @e[tag=cave,distance=..2] add current