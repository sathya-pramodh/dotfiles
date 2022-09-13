# Chest Menu
execute as @a run function b:cm/check
execute at @a as @e[type=item, distance=..1.4, nbt={Item:{tag:{isMenu:1b}}}] run data modify entity @s PickupDelay set value 0

# Reset Player
execute as @a[predicate=b:dimension/overworld] run function b:logic/reset_player/in_overworld

# Right Click Check
execute if score #running mode matches 1 as @a[scores={carrot_stick=1..}] run function b:logic/right_click