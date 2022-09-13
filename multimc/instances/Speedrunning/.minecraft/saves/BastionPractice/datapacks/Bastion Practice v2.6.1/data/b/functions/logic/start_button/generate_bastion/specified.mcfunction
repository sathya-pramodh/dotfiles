# Create origin marker for bastion regen
kill @e[type=area_effect_cloud, tag=bastion_origin]
summon area_effect_cloud ~ ~ ~ {Tags:["bastion_origin"], Duration:9999999}

# Generate bastion specified by bastion_id
execute if score #bastion_id bastiongen matches 0 run function b:logic/start_button/generate_bastion/_generate/bridge
execute if score #bastion_id bastiongen matches 1 run function b:logic/start_button/generate_bastion/_generate/stables
execute if score #bastion_id bastiongen matches 2 run function b:logic/start_button/generate_bastion/_generate/treasure
execute if score #bastion_id bastiongen matches 3 run function b:logic/start_button/generate_bastion/_generate/units