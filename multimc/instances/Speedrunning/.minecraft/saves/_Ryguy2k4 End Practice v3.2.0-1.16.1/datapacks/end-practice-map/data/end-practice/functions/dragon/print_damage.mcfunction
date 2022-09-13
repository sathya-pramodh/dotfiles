scoreboard players operation prevHealth Dragon -= health Dragon
execute if score damageMessage Settings matches 1 run tellraw @p ["",{"text":"Dragon Damage: ","color":"gold"},{"score":{"name":"prevHealth","objective":"Dragon"},"color":"red"}]
execute if score damageMessage Settings matches 2 run tellraw @p {"score":{"name":"prevHealth","objective":"Dragon"},"color":"dark_gray"}