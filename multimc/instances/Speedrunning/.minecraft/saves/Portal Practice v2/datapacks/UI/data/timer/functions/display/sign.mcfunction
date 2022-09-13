## Display
# 5:05
execute if score minute time matches 0 if score milisecond time matches ..9 run data modify block ~ ~ ~ Text1 set value '[{"score":{"objective":"time","name": "second"}},{"text":":0"},{"score":{"objective":"time","name": "milisecond"}}]'
# 5:10
execute if score minute time matches 0 if score milisecond time matches 10.. run data modify block ~ ~ ~ Text1 set value '[{"score":{"objective":"time","name": "second"}},{"text":":"},{"score":{"objective":"time","name": "milisecond"}}]'

# 5:03:05
execute if score minute time matches 1.. if score second time matches ..9 if score milisecond time matches ..9 run data modify block ~ ~ ~ Text1 set value '[{"score":{"objective":"time","name": "minute"}},{"text":":0"},{"score":{"objective":"time","name": "second"}},{"text":":0"},{"score":{"objective":"time","name": "milisecond"}}]'
# 5:03:10
execute if score minute time matches 1.. if score second time matches ..9 if score milisecond time matches 10.. run data modify block ~ ~ ~ Text1 set value '[{"score":{"objective":"time","name": "minute"}},{"text":":0"},{"score":{"objective":"time","name": "second"}},{"text":":"},{"score":{"objective":"time","name": "milisecond"}}]'

# 5:30:05
execute if score minute time matches 1.. if score second time matches 10.. if score milisecond time matches ..9 run data modify block ~ ~ ~ Text1 set value '[{"score":{"objective":"time","name": "minute"}},{"text":":"},{"score":{"objective":"time","name": "second"}},{"text":":0"},{"score":{"objective":"time","name": "milisecond"}}]'
# 5:30:10
execute if score minute time matches 1.. if score second time matches 10.. if score milisecond time matches 10.. run data modify block ~ ~ ~ Text1 set value '[{"score":{"objective":"time","name": "minute"}},{"text":":"},{"score":{"objective":"time","name": "second"}},{"text":":"},{"score":{"objective":"time","name": "milisecond"}}]'