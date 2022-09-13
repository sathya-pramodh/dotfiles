# Forceload chunks
forceload remove all
execute if score #bastion_id bastiongen matches 0 run function b:logic/start_button/forceload_bastion/_forceload/bridge
execute if score #bastion_id bastiongen matches 1 run function b:logic/start_button/forceload_bastion/_forceload/stables
execute if score #bastion_id bastiongen matches 2 run function b:logic/start_button/forceload_bastion/_forceload/treasure
execute if score #bastion_id bastiongen matches 3 run function b:logic/start_button/forceload_bastion/_forceload/units