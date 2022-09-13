scoreboard players set #hoglin bastiongen 0

# Apply weights
execute if predicate b:chance/03333 run scoreboard players set #hoglin bastiongen 1
execute if score #hoglin bastiongen matches 0 if predicate b:chance/08 run scoreboard players set #hoglin bastiongen 2
execute if score #hoglin bastiongen matches 0 run scoreboard players set #hoglin bastiongen 3

# Summon enitites
execute if score #hoglin bastiongen matches 2 run summon hoglin ~ ~1 ~ {PersistenceRequired: 1, CannotBeHunted: 1, Tags:["hoglin"]}
execute if score #hoglin bastiongen matches 3 run summon hoglin ~ ~1 ~ {PersistenceRequired: 1, CannotBeHunted: 1, Age: -24000, Tags:["hoglin"]}
