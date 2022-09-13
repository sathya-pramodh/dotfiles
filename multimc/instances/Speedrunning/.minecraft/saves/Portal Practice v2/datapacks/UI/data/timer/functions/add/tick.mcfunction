scoreboard players add tick time 1
scoreboard players add milisecond time 5
execute if score tick time matches 20 run function timer:add/second

## Display
function timer:display/actionbar