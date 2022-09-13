scoreboard players set #piglin bastiongen 0

# Apply Weights
execute if predicate b:chance/01 run scoreboard players set #piglin bastiongen 1
execute if score #piglin bastiongen matches 0 if predicate b:chance/04444 run scoreboard players set #piglin bastiongen 2
execute if score #piglin bastiongen matches 0 if predicate b:chance/08 run scoreboard players set #piglin bastiongen 3
execute if score #piglin bastiongen matches 0 run scoreboard players set #piglin bastiongen 4

# Summon enitites
execute if score #piglin bastiongen matches 2 run summon piglin ~ ~1 ~ {PersistenceRequired: 1, CannotHunt: 1, HandItems: [{id:"crossbow", Count: 1}], Tags: ["piglin"]}
execute if score #piglin bastiongen matches 3 run summon piglin ~ ~1 ~ {PersistenceRequired: 1, CannotHunt: 1, HandItems: [{id:"golden_sword", Count: 1}], Tags: ["piglin"]}
execute if score #piglin bastiongen matches 4 run summon piglin ~ ~1 ~ {PersistenceRequired: 1, CannotHunt: 1, HandItems: [{id:"golden_sword", Count: 1}], ArmorItems: [{}, {}, {id:"golden_chestplate", Count: 1}, {}], Tags: ["piglin"]}