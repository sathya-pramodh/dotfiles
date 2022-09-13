execute if score terrain settings matches 0 if score #bastion_rotation bastiongen matches 1 run fill ~42 126 ~-13 ~-31 127 ~60 netherrack
execute if score terrain settings matches 0 if score #bastion_rotation bastiongen matches 2 run fill ~13 126 ~42 ~-60 127 ~-31 netherrack
execute if score terrain settings matches 0 if score #bastion_rotation bastiongen matches 3 run fill ~-42 126 ~13 ~31 127 ~-60 netherrack
execute if score terrain settings matches 0 if score #bastion_rotation bastiongen matches 4 run fill ~-13 126 ~-42 ~60 127 ~31 netherrack
execute if score #bastion_rotation bastiongen matches 1 run function b:generate/stables/r0
execute if score #bastion_rotation bastiongen matches 2 run function b:generate/stables/r90
execute if score #bastion_rotation bastiongen matches 3 run function b:generate/stables/r180
execute if score #bastion_rotation bastiongen matches 4 run function b:generate/stables/r270