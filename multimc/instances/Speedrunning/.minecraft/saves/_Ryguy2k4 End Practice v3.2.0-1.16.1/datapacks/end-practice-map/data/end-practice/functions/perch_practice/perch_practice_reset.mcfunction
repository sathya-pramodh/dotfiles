# TP back to lobby
execute in minecraft:the_end run tp @p[gamemode=survival] 90 26 -1 180 0

# Display time
title @p times 10 50 10
execute if score mode Settings matches 2 if score health Dragon matches 0 if score failed Dragon matches 0 if score second Time matches 0..9 run title @p title ["",{"color":"white","bold":true,"score":{"name":"minute","objective":"Time"}},{"color":"white","bold":true,"text":":0"},{"color":"white","bold":true,"score":{"name":"second","objective":"Time"}}]
execute if score mode Settings matches 2 if score health Dragon matches 0 if score failed Dragon matches 0 if score second Time matches 10.. run title @p title ["",{"color":"white","bold":true,"score":{"name":"minute","objective":"Time"}},{"color":"white","bold":true,"text":":"},{"color":"white","bold":true,"score":{"name":"second","objective":"Time"}}]
execute if score mode Settings matches 2 if score health Dragon matches 0 if score failed Dragon matches 1 if score second Time matches 0..9 run title @p title ["",{"color":"white","bold":true,"score":{"name":"minute","objective":"Time"}},{"color":"white","bold":true,"text":":0"},{"color":"white","bold":true,"score":{"name":"second","objective":"Time"}},{"text":" (failed)"}]
execute if score mode Settings matches 2 if score health Dragon matches 0 if score failed Dragon matches 1 if score second Time matches 10.. run title @p title ["",{"color":"white","bold":true,"score":{"name":"minute","objective":"Time"}},{"color":"white","bold":true,"text":":"},{"color":"white","bold":true,"score":{"name":"second","objective":"Time"}},{"text":" (failed)"}]
