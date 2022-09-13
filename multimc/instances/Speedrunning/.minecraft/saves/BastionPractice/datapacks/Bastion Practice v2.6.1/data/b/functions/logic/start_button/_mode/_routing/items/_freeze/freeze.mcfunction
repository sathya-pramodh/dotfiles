execute if score freeze mode matches 2 run execute as @e[type=piglin,tag=piglin] run data modify entity @s NoAI set value 0
execute if score freeze mode matches 2 run execute as @e[type=piglin,tag=piglin] run data modify entity @s Silent set value 0
execute if score freeze mode matches 2 run execute as @e[type=piglin,tag=piglin] run data modify entity @s CustomName set value ""
execute if score freeze mode matches 2 run execute as @e[type=piglin,tag=piglin] run data modify entity @s CustomNameVisible set value 0

execute if score freeze mode matches 1 run execute as @e[type=piglin,tag=piglin] run data modify entity @s NoAI set value 1
execute if score freeze mode matches 1 run execute as @e[type=piglin,tag=piglin] run data modify entity @s Silent set value 1
execute if score freeze mode matches 1 run execute as @e[type=piglin,tag=piglin] run data modify entity @s CustomName set value "[{\"text\":\"Frozen\",\"color\":\"yellow\"}]"
execute if score freeze mode matches 1 run execute as @e[type=piglin,tag=piglin] run data modify entity @s CustomNameVisible set value 1

execute if score freeze mode matches 2 run execute as @e[type=hoglin,tag=hoglin] run data modify entity @s NoAI set value 0
execute if score freeze mode matches 2 run execute as @e[type=hoglin,tag=hoglin] run data modify entity @s Silent set value 0
execute if score freeze mode matches 2 run execute as @e[type=hoglin,tag=hoglin] run data modify entity @s CustomName set value ""
execute if score freeze mode matches 2 run execute as @e[type=hoglin,tag=hoglin] run data modify entity @s CustomNameVisible set value 0

execute if score freeze mode matches 1 run execute as @e[type=hoglin,tag=hoglin] run data modify entity @s NoAI set value 1
execute if score freeze mode matches 1 run execute as @e[type=hoglin,tag=hoglin] run data modify entity @s Silent set value 1
execute if score freeze mode matches 1 run execute as @e[type=hoglin,tag=hoglin] run data modify entity @s CustomName set value "[{\"text\":\"Frozen\",\"color\":\"yellow\"}]"
execute if score freeze mode matches 1 run execute as @e[type=hoglin,tag=hoglin] run data modify entity @s CustomNameVisible set value 1