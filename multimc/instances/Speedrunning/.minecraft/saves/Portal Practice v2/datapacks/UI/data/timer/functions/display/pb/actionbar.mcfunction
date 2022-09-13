## Display
# 5:05
execute if score @e[tag=data,sort=nearest,limit=1] Minute matches 0 if score @e[tag=data,sort=nearest,limit=1] Milisecond matches ..9 run title @a actionbar [{"score":{"objective":"Second","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":0"},{"score":{"objective":"Milisecond","name": "@e[tag=data,sort=nearest,limit=1]"}}]
# 5:10
execute if score @e[tag=data,sort=nearest,limit=1] Minute matches 0 if score @e[tag=data,sort=nearest,limit=1] Milisecond matches 10.. run title @a actionbar [{"score":{"objective":"Second","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":"},{"score":{"objective":"Milisecond","name": "@e[tag=data,sort=nearest,limit=1]"}}]

# 5:03:05
execute if score @e[tag=data,sort=nearest,limit=1] Minute matches 1.. if score @e[tag=data,sort=nearest,limit=1] Second matches ..9 if score @e[tag=data,sort=nearest,limit=1] Milisecond matches ..9 run title @a actionbar [{"score":{"objective":"Minute","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":0"},{"score":{"objective":"Second","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":0"},{"score":{"objective":"Milisecond","name": "@e[tag=data,sort=nearest,limit=1]"}}]
# 5:03:10
execute if score @e[tag=data,sort=nearest,limit=1] Minute matches 1.. if score @e[tag=data,sort=nearest,limit=1] Second matches ..9 if score @e[tag=data,sort=nearest,limit=1] Milisecond matches 10.. run title @a actionbar [{"score":{"objective":"Minute","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":0"},{"score":{"objective":"Second","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":"},{"score":{"objective":"Milisecond","name": "@e[tag=data,sort=nearest,limit=1]"}}]

# 5:30:05
execute if score @e[tag=data,sort=nearest,limit=1] Minute matches 1.. if score @e[tag=data,sort=nearest,limit=1] Second matches 10.. if score @e[tag=data,sort=nearest,limit=1] Milisecond matches ..9 run title @a actionbar [{"score":{"objective":"Minute","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":"},{"score":{"objective":"Second","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":0"},{"score":{"objective":"Milisecond","name": "@e[tag=data,sort=nearest,limit=1]"}}]
# 5:30:10
execute if score @e[tag=data,sort=nearest,limit=1] Minute matches 1.. if score @e[tag=data,sort=nearest,limit=1] Second matches 10.. if score @e[tag=data,sort=nearest,limit=1] Milisecond matches 10.. run title @a actionbar [{"score":{"objective":"Minute","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":"},{"score":{"objective":"Second","name": "@e[tag=data,sort=nearest,limit=1]"}},{"text":":"},{"score":{"objective":"Milisecond","name": "@e[tag=data,sort=nearest,limit=1]"}}]