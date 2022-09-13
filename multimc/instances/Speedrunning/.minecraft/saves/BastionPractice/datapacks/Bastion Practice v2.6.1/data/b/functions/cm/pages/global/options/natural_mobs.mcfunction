scoreboard players add nat_mobs settings 1
execute if score nat_mobs settings matches 2.. run scoreboard players set nat_mobs settings 0
execute if score nat_mobs settings matches 0 run gamerule doMobSpawning false
execute if score nat_mobs settings matches 1 run gamerule doMobSpawning true