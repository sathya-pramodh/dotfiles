scoreboard objectives add r_cave dummy

# For custom cave finder
scoreboard objectives add custom dummy
scoreboard players set num custom 0
scoreboard players set saved custom 0
scoreboard players set height custom 16

# predicate
scoreboard players set pred r_cave 0

scoreboard players set repeat r_cave 0

# Num
scoreboard objectives add num dummy
scoreboard players set 1000000 num 1000000
scoreboard players set -1 num -1
scoreboard players set 500000 num 500000
scoreboard players set 5 num 5
scoreboard players set 10 num 10

# Gamerule
gamerule doMobSpawning false

# Rand
scoreboard objectives add rand dummy