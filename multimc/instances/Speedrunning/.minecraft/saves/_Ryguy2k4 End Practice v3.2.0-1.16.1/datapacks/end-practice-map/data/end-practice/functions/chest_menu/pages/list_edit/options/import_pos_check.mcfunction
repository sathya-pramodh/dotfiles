execute store result score tx ChestMenu run data get storage minecraft:list_manual importPos[0]
execute store result score ty ChestMenu run data get storage minecraft:list_manual importPos[1]
execute store result score tz ChestMenu run data get storage minecraft:list_manual importPos[2]
scoreboard players set check ChestMenu 6
execute if score tx ChestMenu <= xRangeMax CONSTANT run scoreboard players remove check ChestMenu 1
execute if score tx ChestMenu >= xRangeMin CONSTANT run scoreboard players remove check ChestMenu 1
execute if score ty ChestMenu <= yRangeMax CONSTANT run scoreboard players remove check ChestMenu 1
execute if score ty ChestMenu >= yRangeMin CONSTANT run scoreboard players remove check ChestMenu 1
execute if score tz ChestMenu <= zRangeMax CONSTANT run scoreboard players remove check ChestMenu 1
execute if score tz ChestMenu >= zRangeMin CONSTANT run scoreboard players remove check ChestMenu 1
execute if score check ChestMenu matches 0 run function end-practice:chest_menu/pages/list_edit/options/import_pos
execute unless score check ChestMenu matches 0 run tellraw @p {"text":"The height you are trying to import is not valid","color":"red"}