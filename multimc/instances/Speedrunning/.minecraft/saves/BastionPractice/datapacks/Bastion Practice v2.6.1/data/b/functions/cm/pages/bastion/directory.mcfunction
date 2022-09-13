execute if score selection chest_menu matches 0 run scoreboard players set @s chest_menu 0

execute if score bastion settings matches 0 if score selection chest_menu matches 1 run function b:cm/pages/bastion/substructures/bridge/left_rampart
execute if score bastion settings matches 0 if score selection chest_menu matches 2 run function b:cm/pages/bastion/substructures/bridge/right_rampart

execute if score bastion settings matches 1 if score selection chest_menu matches 1 run function b:cm/pages/bastion/substructures/stables/left_gap
execute if score bastion settings matches 1 if score selection chest_menu matches 2 run function b:cm/pages/bastion/substructures/stables/right_gap
execute if score bastion settings matches 1 if score selection chest_menu matches 3 run function b:cm/pages/bastion/substructures/stables/left_rampart
execute if score bastion settings matches 1 if score selection chest_menu matches 4 run function b:cm/pages/bastion/substructures/stables/middle_rampart
execute if score bastion settings matches 1 if score selection chest_menu matches 5 run function b:cm/pages/bastion/substructures/stables/right_rampart

execute if score bastion settings matches 2 if score selection chest_menu matches 1 run function b:cm/pages/bastion/substructures/treasure/treasure

execute if score bastion settings matches 3 if score selection chest_menu matches 1 run function b:cm/pages/bastion/substructures/housing/left_rampart

scoreboard players reset selection chest_menu