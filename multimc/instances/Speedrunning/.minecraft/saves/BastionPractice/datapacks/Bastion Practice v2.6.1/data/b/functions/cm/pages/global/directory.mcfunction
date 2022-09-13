execute if score selection chest_menu matches 1 run function b:cm/pages/global/options/bastion
execute if score selection chest_menu matches 2 run function b:cm/pages/global/options/spawnpoint
execute if score selection chest_menu matches 3 run function b:cm/pages/global/options/reset_method
execute if score selection chest_menu matches 4 run function b:cm/pages/global/options/terrain
execute if score selection chest_menu matches 5 run function b:cm/pages/global/options/biome
execute if score selection chest_menu matches 6 run function b:cm/pages/global/options/armor
execute if score selection chest_menu matches 7 run function b:cm/pages/global/options/random_gold
execute if score selection chest_menu matches 8 run function b:cm/pages/global/options/natural_mobs
execute if score selection chest_menu matches 9 run function b:cm/pages/global/options/hoglins
execute if score selection chest_menu matches 0 run scoreboard players set @s chest_menu 1

scoreboard players reset selection chest_menu