# If slot is saved already
scoreboard players set @s ChestMenu 2
execute store result score tx ChestMenu run data get storage minecraft:list_auto currentItem.tag.xPos
execute store result score ty ChestMenu run data get storage minecraft:list_auto currentItem.tag.yPos
execute store result score tz ChestMenu run data get storage minecraft:list_auto currentItem.tag.zPos