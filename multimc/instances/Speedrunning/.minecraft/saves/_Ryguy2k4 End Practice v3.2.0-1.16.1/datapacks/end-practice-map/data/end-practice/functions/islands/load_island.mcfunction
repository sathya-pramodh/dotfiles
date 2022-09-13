# Prepare for loading
function end-practice:islands/pre_load

# Load island based on selection
execute if score island rng matches 0 run function end-practice:islands/taiga
execute if score island rng matches 1 run function end-practice:islands/dolphin
execute if score island rng matches 2 run function end-practice:islands/gravel
execute if score island rng matches 3 run function end-practice:islands/wide
execute if score island rng matches 4 run function end-practice:islands/hill

# Clean up
function end-practice:islands/post_load