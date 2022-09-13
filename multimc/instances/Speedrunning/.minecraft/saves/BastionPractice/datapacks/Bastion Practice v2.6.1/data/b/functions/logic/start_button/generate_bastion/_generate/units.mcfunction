execute if score terrain settings matches 0 if score #bastion_rotation bastiongen matches 1 run fill ~-29 126 ~-12 ~58 127 ~62 netherrack
execute if score terrain settings matches 0 if score #bastion_rotation bastiongen matches 2 run fill ~12 126 ~-29 ~-62 127 ~58 netherrack
execute if score terrain settings matches 0 if score #bastion_rotation bastiongen matches 3 run fill ~29 126 ~12 ~-58 127 ~-62 netherrack
execute if score terrain settings matches 0 if score #bastion_rotation bastiongen matches 4 run fill ~-12 126 ~29 ~62 127 ~-58 netherrack
execute if score #bastion_rotation bastiongen matches 1 run function b:generate/housing/r0
execute if score #bastion_rotation bastiongen matches 2 run function b:generate/housing/r90
execute if score #bastion_rotation bastiongen matches 3 run function b:generate/housing/r180
execute if score #bastion_rotation bastiongen matches 4 run function b:generate/housing/r270