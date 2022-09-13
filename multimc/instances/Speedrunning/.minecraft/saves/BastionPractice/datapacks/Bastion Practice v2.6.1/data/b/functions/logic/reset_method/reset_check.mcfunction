execute if score reset_method settings matches 1 as @a[scores={dropped_pick=1..}] run function b:logic/reset_player/show_timer
execute if score reset_method settings matches 2 as @a[scores={dropped_plate=1..}] run function b:logic/reset_player/show_timer
execute if score reset_method settings matches 2 as @a[predicate=!b:wearing_stop_chestplate] run function b:logic/reset_player/show_timer