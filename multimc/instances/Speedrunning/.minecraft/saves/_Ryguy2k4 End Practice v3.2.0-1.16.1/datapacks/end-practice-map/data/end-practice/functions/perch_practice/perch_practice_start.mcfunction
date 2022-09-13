function end-practice:reset
execute if score fightType Settings matches 1 run function end-practice:islands/pre_load
execute if score fightType Settings matches 1 run scoreboard players set node rng 0
execute if score fightType Settings matches 1 run function end-practice:islands/taiga
execute if score fightType Settings matches 1 run function end-practice:islands/post_load

# Turn enderman spawning on/off
execute if score enderman Settings matches 0 run gamerule doMobSpawning false
execute if score enderman Settings matches 1 run gamerule doMobSpawning true

# Pick which fight type
execute if score fightType Settings matches 0 run function end-practice:perch_practice/perch_practice_start_artificial
execute if score fightType Settings matches 1 run function end-practice:perch_practice/perch_practice_resummon