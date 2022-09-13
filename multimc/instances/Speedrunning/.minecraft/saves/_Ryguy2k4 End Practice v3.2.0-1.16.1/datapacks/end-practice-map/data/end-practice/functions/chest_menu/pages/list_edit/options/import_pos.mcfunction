execute store result score x rng run data get storage minecraft:list_manual importPos[0]
execute store result score y rng run data get storage minecraft:list_manual importPos[1]
execute store result score z rng run data get storage minecraft:list_manual importPos[2]
tellraw @p {"text":"Height was imported and loaded","color":"green"}