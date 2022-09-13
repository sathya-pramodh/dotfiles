## Main Room
# Main room times
execute as @e[tag=sign] run data modify entity @s CustomNameVisible set value 0b
# Main room last time and pb
execute as @e[tag=time] run data modify entity @s CustomNameVisible set value 0b
# Main room portal names
execute as @e[tag=main] run data modify entity @s CustomNameVisible set value 0b
## Portal Times 
# Portal Names
execute as @e[tag=ruined_name] run data modify entity @s CustomNameVisible set value 0b
execute as @e[tag=cave_name] run data modify entity @s CustomNameVisible set value 1b
execute as @e[tag=blind_name] run data modify entity @s CustomNameVisible set value 0b
# Portal Times
execute as @e[tag=ruined] run data modify entity @s CustomNameVisible set value 0b
execute as @e[tag=cave] run data modify entity @s CustomNameVisible set value 1b
execute as @e[tag=blind] run data modify entity @s CustomNameVisible set value 0b