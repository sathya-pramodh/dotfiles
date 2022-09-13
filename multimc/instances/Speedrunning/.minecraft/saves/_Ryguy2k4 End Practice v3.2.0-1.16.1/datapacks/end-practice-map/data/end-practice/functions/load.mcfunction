# Initialize Scoreboards
scoreboard objectives remove Time
scoreboard objectives add Time dummy
scoreboard players set minute Time 0
scoreboard players set second Time 0
scoreboard players set tick Time 0
scoreboard players set totalTicks Time 0

scoreboard objectives remove CONSTANT
scoreboard objectives add CONSTANT dummy
scoreboard players set 20 CONSTANT 20
scoreboard players set 60 CONSTANT 60
scoreboard players set rRange CONSTANT 360
scoreboard players set xRange CONSTANT 16000
scoreboard players set xRangeMax CONSTANT 7000
scoreboard players set xRangeMin CONSTANT -8000
scoreboard players set yRange CONSTANT 21000
scoreboard players set yRangeMax CONSTANT 97000
scoreboard players set yRangeMin CONSTANT 77000
scoreboard players set zRange CONSTANT 21000
scoreboard players set zRangeMax CONSTANT 50000
scoreboard players set zRangeMin CONSTANT 30000
scoreboard players set numIslands CONSTANT 5
scoreboard players set numLoadouts CONSTANT 3
scoreboard players set 2 CONSTANT 2

scoreboard objectives remove forceperch
scoreboard objectives add forceperch minecraft.used:minecraft.potion

scoreboard objectives remove death
scoreboard objectives add death deathCount

# Initialize Bossbar
bossbar remove minecraft:dragon
bossbar add minecraft:dragon {"text":"Ender Dragon","color":"white","italic":false}

# Run init
schedule function end-practice:init 10