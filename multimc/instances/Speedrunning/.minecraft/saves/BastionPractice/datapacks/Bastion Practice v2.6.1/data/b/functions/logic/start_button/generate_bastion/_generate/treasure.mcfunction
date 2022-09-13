execute if score terrain settings matches 0 if score #bastion_rotation bastiongen matches 1 run fill ~-16 126 ~-44 ~50 127 ~50 netherrack
execute if score terrain settings matches 0 if score #bastion_rotation bastiongen matches 2 run fill ~44 126 ~-16 ~-50 127 ~50 netherrack
execute if score terrain settings matches 0 if score #bastion_rotation bastiongen matches 3 run fill ~16 126 ~44 ~-50 127 ~-50 netherrack
execute if score terrain settings matches 0 if score #bastion_rotation bastiongen matches 4 run fill ~-44 126 ~16 ~50 127 ~-50 netherrack
execute if score #bastion_rotation bastiongen matches 1 run function b:generate/treasure/r0
execute if score #bastion_rotation bastiongen matches 2 run function b:generate/treasure/r90
execute if score #bastion_rotation bastiongen matches 3 run function b:generate/treasure/r180
execute if score #bastion_rotation bastiongen matches 4 run function b:generate/treasure/r270