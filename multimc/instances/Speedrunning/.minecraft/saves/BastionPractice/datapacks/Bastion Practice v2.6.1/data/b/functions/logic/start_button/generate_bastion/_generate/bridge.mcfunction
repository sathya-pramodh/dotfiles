execute if score terrain settings matches 0 if score #bastion_rotation bastiongen matches 1 run fill ~-44 126 ~-29 ~36 127 ~60 netherrack
execute if score terrain settings matches 0 if score #bastion_rotation bastiongen matches 2 run fill ~29 126 ~-44 ~-60 127 ~36 netherrack
execute if score terrain settings matches 0 if score #bastion_rotation bastiongen matches 3 run fill ~44 126 ~29 ~-36 127 ~-60 netherrack
execute if score terrain settings matches 0 if score #bastion_rotation bastiongen matches 4 run fill ~-29 126 ~44 ~60 127 ~-36 netherrack
execute if score #bastion_rotation bastiongen matches 1 run function b:generate/bridge/r0
execute if score #bastion_rotation bastiongen matches 2 run function b:generate/bridge/r90
execute if score #bastion_rotation bastiongen matches 3 run function b:generate/bridge/r180
execute if score #bastion_rotation bastiongen matches 4 run function b:generate/bridge/r270