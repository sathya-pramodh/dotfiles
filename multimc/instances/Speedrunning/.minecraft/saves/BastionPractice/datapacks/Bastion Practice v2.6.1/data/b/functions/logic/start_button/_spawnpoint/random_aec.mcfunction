tp @e[type=area_effect_cloud,limit=1,sort=random,tag=spawnpoint]
execute unless block ~ ~1 ~ air run kill @e[type=area_effect_cloud,limit=1,sort=nearest]
execute unless block ~ ~1 ~ air run function b:logic/start_button/_spawnpoint/random_aec