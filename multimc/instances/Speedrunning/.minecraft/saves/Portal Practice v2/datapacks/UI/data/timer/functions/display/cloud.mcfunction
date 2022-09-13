## Text1
# 5:05
execute if score minute time matches 0 if score milisecond time matches ..9 run data modify block ~ ~ ~ Text1 set value '[{"text":"Previous - "},{"score":{"objective":"time","name": "second"}},{"text":":0"},{"score":{"objective":"time","name": "milisecond"}}]'
# 5:10
execute if score minute time matches 0 if score milisecond time matches 10.. run data modify block ~ ~ ~ Text1 set value '[{"text":"Previous - "},{"score":{"objective":"time","name": "second"}},{"text":":"},{"score":{"objective":"time","name": "milisecond"}}]'

# 5:03:05
execute if score minute time matches 1.. if score second time matches ..9 if score milisecond time matches ..9 run data modify block ~ ~ ~ Text1 set value '[{"text":"Previous - "},{"score":{"objective":"time","name": "minute"}},{"text":":0"},{"score":{"objective":"time","name": "second"}},{"text":":0"},{"score":{"objective":"time","name": "milisecond"}}]'
# 5:03:10
execute if score minute time matches 1.. if score second time matches ..9 if score milisecond time matches 10.. run data modify block ~ ~ ~ Text1 set value '[{"text":"Previous - "},{"score":{"objective":"time","name": "minute"}},{"text":":0"},{"score":{"objective":"time","name": "second"}},{"text":":"},{"score":{"objective":"time","name": "milisecond"}}]'

# 5:30:05
execute if score minute time matches 1.. if score second time matches 10.. if score milisecond time matches ..9 run data modify block ~ ~ ~ Text1 set value '[{"text":"Previous - "},{"score":{"objective":"time","name": "minute"}},{"text":":"},{"score":{"objective":"time","name": "second"}},{"text":":0"},{"score":{"objective":"time","name": "milisecond"}}]'
# 5:30:10
execute if score minute time matches 1.. if score second time matches 10.. if score milisecond time matches 10.. run data modify block ~ ~ ~ Text1 set value '[{"text":"Previous - "},{"score":{"objective":"time","name": "minute"}},{"text":":"},{"score":{"objective":"time","name": "second"}},{"text":":"},{"score":{"objective":"time","name": "milisecond"}}]'


## Text2
# 5:05
execute if score @e[tag=data,sort=nearest,limit=1] Minute matches 0 if score @e[tag=data,sort=nearest,limit=1] Milisecond matches ..9 run data modify block ~ ~ ~ Text2 set value '[{"text":"PB - "},{"score":{"objective":"Second","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":0"},{"score":{"objective":"Milisecond","name": "@e[tag=data,sort=nearest,limit=1]"}}]'
# 5:10
execute if score @e[tag=data,sort=nearest,limit=1] Minute matches 0 if score @e[tag=data,sort=nearest,limit=1] Milisecond matches 10.. run data modify block ~ ~ ~ Text2 set value '[{"text":"PB - "},{"score":{"objective":"Second","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":"},{"score":{"objective":"Milisecond","name": "@e[tag=data,sort=nearest,limit=1]"}}]'

# 5:03:05
execute if score @e[tag=data,sort=nearest,limit=1] Minute matches 1.. if score @e[tag=data,sort=nearest,limit=1] Second matches ..9 if score @e[tag=data,sort=nearest,limit=1] Milisecond matches ..9 run data modify block ~ ~ ~ Text2 set value '[{"text":"PB - "},{"score":{"objective":"Minute","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":0"},{"score":{"objective":"Second","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":0"},{"score":{"objective":"Milisecond","name": "@e[tag=data,sort=nearest,limit=1]"}}]'
# 5:03:10
execute if score @e[tag=data,sort=nearest,limit=1] Minute matches 1.. if score @e[tag=data,sort=nearest,limit=1] Second matches ..9 if score @e[tag=data,sort=nearest,limit=1] Milisecond matches 10.. run data modify block ~ ~ ~ Text2 set value '[{"text":"PB - "},{"score":{"objective":"Minute","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":0"},{"score":{"objective":"Second","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":"},{"score":{"objective":"Milisecond","name": "@e[tag=data,sort=nearest,limit=1]"}}]'

# 5:30:05
execute if score @e[tag=data,sort=nearest,limit=1] Minute matches 1.. if score @e[tag=data,sort=nearest,limit=1] Second matches 10.. if score @e[tag=data,sort=nearest,limit=1] Milisecond matches ..9 run data modify block ~ ~ ~ Text2 set value '[{"text":"PB - "},{"score":{"objective":"Minute","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":"},{"score":{"objective":"Second","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":0"},{"score":{"objective":"Milisecond","name": "@e[tag=data,sort=nearest,limit=1]"}}]'
# 5:30:10
execute if score @e[tag=data,sort=nearest,limit=1] Minute matches 1.. if score @e[tag=data,sort=nearest,limit=1] Second matches 10.. if score @e[tag=data,sort=nearest,limit=1] Milisecond matches 10.. run data modify block ~ ~ ~ Text2 set value '[{"text":"PB - "},{"score":{"objective":"Minute","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":"},{"score":{"objective":"Second","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":"},{"score":{"objective":"Milisecond","name": "@e[tag=data,sort=nearest,limit=1]"}}]'