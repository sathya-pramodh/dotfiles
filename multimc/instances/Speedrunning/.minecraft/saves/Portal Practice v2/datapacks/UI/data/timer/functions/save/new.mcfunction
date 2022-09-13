summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["nokill","data"]}
execute as @e[tag=data,sort=nearest,limit=1] run scoreboard players set @s Minute 9999
execute as @e[tag=data,sort=nearest,limit=1] run scoreboard players set @s Second 9999
execute as @e[tag=data,sort=nearest,limit=1] run scoreboard players set @s Milisecond 9999