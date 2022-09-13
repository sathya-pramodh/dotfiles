spreadplayers 0 0 500 100000 under 255 false @s
scoreboard players set #valid_biome settings 1

execute if score biome settings matches -1 at @s positioned ~ 32 ~ if predicate b:biome/basalt_delta run scoreboard players set #valid_biome settings 0
execute if score biome settings matches 0 at @s positioned ~ 32 ~ unless predicate b:biome/crimson_forest run scoreboard players set #valid_biome settings 0
execute if score biome settings matches 1 at @s positioned ~ 32 ~ unless predicate b:biome/warped_forest run scoreboard players set #valid_biome settings 0
execute if score biome settings matches 2 at @s positioned ~ 32 ~ unless predicate b:biome/nether_wastes run scoreboard players set #valid_biome settings 0
execute if score biome settings matches 3 at @s positioned ~ 32 ~ unless predicate b:biome/soul_sand_valley run scoreboard players set #valid_biome settings 0
execute if score biome settings matches 4 at @s positioned ~ 32 ~ unless predicate b:biome/basalt_delta run scoreboard players set #valid_biome settings 0

execute if score #valid_biome settings matches 0 run function b:logic/start_button/find_valid_location