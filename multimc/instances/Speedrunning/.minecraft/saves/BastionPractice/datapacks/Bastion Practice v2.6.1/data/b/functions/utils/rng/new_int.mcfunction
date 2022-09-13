scoreboard players operation #current rng *= #1103515245 rng
execute store result score #lower rng run scoreboard players add #current rng 12345
scoreboard players operation #lower rng /= #65536 rng
scoreboard players operation #current rng *= #1103515245 rng
execute store result score out rng run scoreboard players add #current rng 12345
scoreboard players operation out rng /= #32768 rng
scoreboard players operation out rng *= #32768 rng
execute if score #lower rng matches ..-1 if score out rng matches 0.. run scoreboard players operation out rng += #-2147483648 rng
execute if score #lower rng matches 0.. if score out rng matches ..-1 run scoreboard players operation out rng += #-2147483648 rng
scoreboard players operation out rng += #lower rng
execute store result score out rng run scoreboard players operation out rng %= max rng
scoreboard players add out rng 1
