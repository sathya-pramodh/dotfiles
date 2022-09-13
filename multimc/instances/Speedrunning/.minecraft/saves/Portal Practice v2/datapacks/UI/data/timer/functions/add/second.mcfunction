# Resetting these guys to 0
scoreboard players set tick time 0
scoreboard players set milisecond time 0

# Adding 1 to second
scoreboard players add second time 1
execute if score second time matches 60 run function timer:add/minute