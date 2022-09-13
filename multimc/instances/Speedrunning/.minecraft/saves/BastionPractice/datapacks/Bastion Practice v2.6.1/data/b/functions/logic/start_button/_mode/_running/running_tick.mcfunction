execute if score Gold info matches 1.. run title @a actionbar [{"nbt":"m","storage":"timer","interpret":true},":",{"nbt":"s","storage":"timer","interpret":true}," ",{"score":{"name":"Gold","objective":"info"},"color":"gold"}]
execute if score Gold info matches 0 run title @a actionbar [{"nbt":"m","storage":"timer","interpret":true},":",{"nbt":"s","storage":"timer","interpret":true}," ",{"score":{"name":"Gold","objective":"info"},"color":"gray"}]
function b:logic/start_button/get_info/get_info
function b:logic/reset_method/reset_check
schedule function b:logic/start_button/_mode/_running/running_tick 1t