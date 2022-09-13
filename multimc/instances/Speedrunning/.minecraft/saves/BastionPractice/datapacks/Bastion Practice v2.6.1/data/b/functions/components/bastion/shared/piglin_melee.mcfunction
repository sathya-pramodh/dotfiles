scoreboard players set #piglin_melee bastiongen 0

# Apply weights
execute if predicate b:chance/01428 run scoreboard players set #piglin_melee bastiongen 1
execute if score #piglin_melee bastiongen matches 0 if predicate b:chance/08333 run scoreboard players set #piglin_melee bastiongen 2
execute if score #piglin_melee bastiongen matches 0 run scoreboard players set #piglin_melee bastiongen 3

# Summon enitites
execute if score #piglin_melee bastiongen matches 1 run summon piglin ~ ~1 ~ {PersistenceRequired: 1, CannotHunt: 1, HandItems: [{id:"golden_sword", Count: 1}], ArmorItems: [{}, {}, {id:"golden_chestplate", Count: 1}, {}], Tags: ["piglin"]}
execute if score #piglin_melee bastiongen matches 2 run summon piglin ~ ~1 ~ {PersistenceRequired: 1, CannotHunt: 1, HandItems: [{id:"golden_sword", Count: 1}], ArmorItems: [{}, {}, {id:"golden_chestplate", Count: 1}, {}], Tags: ["piglin"]}
execute if score #piglin_melee bastiongen matches 3 run summon piglin ~ ~1 ~ {PersistenceRequired: 1, CannotHunt: 1, HandItems: [{id:"golden_sword", Count: 1}], Tags: ["piglin"]}