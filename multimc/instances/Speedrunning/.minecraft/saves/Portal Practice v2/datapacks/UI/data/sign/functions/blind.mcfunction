tag @e[tag=current] remove current
execute unless entity @e[tag=blind,distance=..2] run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["blind","nokill"],CustomNameVisible:1b}
tag @e[tag=blind,distance=..2] add current