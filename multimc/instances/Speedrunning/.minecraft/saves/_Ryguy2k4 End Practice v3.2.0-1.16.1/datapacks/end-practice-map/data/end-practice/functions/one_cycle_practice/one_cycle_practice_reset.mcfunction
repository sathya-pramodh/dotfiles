# TP back to lobby
execute in minecraft:the_end run tp @p[gamemode=survival] 90 26 1 0 0

# Auto add failed heights
execute if score auto Dragon matches 1 run function end-practice:one_cycle_practice/list_auto_add