# Quadrant +/+
execute if score node rng matches 0 run data merge block 0 79 0 {"name":"end-practice:dolphin/0_1_0_back"}
execute if score node rng matches 1 run data merge block 0 79 0 {"name":"end-practice:dolphin/0_1_0_front"}
data merge block 0 31 0 {"name":"end-practice:dolphin/0_0_0"}
data merge block 48 31 0 {"name":"end-practice:dolphin/1_0_0"}
data merge block 96 31 0 {"name":"end-practice:dolphin/2_0_0"}
data merge block 0 31 48 {"name":"end-practice:dolphin/0_0_1"}
data merge block 48 31 48 {"name":"end-practice:dolphin/1_0_1"}
data merge block 0 31 96 {"name":"end-practice:dolphin/0_0_2"}

# Quadrant -/+
data merge block -48 79 0 {"name":"end-practice:dolphin/-1_1_0"}
data merge block -48 31 0 {"name":"end-practice:dolphin/-1_0_0"}
data merge block -96 31 0 {"name":"end-practice:dolphin/-2_0_0"}
data merge block -48 31 48 {"name":"end-practice:dolphin/-1_0_1"}
data merge block -96 31 48 {"name":"end-practice:dolphin/-2_0_1"}
data merge block -48 31 96 {"name":"end-practice:dolphin/-1_0_2"}

# Quadrant -/-
data merge block -48 79 -48 {"name":"end-practice:dolphin/-1_1_-1"}
data merge block -48 31 -48 {"name":"end-practice:dolphin/-1_0_-1"}
data merge block -96 31 -48 {"name":"end-practice:dolphin/-2_0_-1"}
data merge block -48 31 -96 {"name":"end-practice:dolphin/-1_0_-2"}
data merge block -96 31 -96 {"name":"end-practice:dolphin/-2_0_-2"}
data merge block -48 31 -144 {"name":"end-practice:dolphin/-1_0_-3"}

# Quadrant +/-
execute if score node rng matches 0 run data merge block 0 79 -48 {"name":"end-practice:dolphin/0_1_-1_back"}
execute if score node rng matches 1 run data merge block 0 79 -48 {"name":"end-practice:dolphin/0_1_-1_front"}
data merge block 0 31 -48 {"name":"end-practice:dolphin/0_0_-1"}
data merge block 48 31 -48 {"name":"end-practice:dolphin/1_0_-1"}
data merge block 96 31 -48 {"name":"end-practice:dolphin/2_0_-1"}
data merge block 0 31 -96 {"name":"end-practice:dolphin/0_0_-2"}
data merge block 48 31 -96 {"name":"end-practice:dolphin/1_0_-2"}
data merge block 0 31 -144 {"name":"end-practice:dolphin/0_0_-3"}