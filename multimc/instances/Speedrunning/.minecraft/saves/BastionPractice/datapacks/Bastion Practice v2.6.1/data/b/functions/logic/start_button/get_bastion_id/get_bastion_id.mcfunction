# Get bastion_id score for forceloading and bastion generation
execute if score bastion settings matches 0.. run scoreboard players operation #bastion_id bastiongen = bastion settings
execute if score bastion settings matches -1 run function b:logic/start_button/get_bastion_id/random