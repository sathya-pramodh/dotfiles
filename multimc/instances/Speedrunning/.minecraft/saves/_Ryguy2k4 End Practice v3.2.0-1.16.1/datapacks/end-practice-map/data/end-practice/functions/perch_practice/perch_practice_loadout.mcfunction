execute if score perchLoadout Settings matches 0 run function end-practice:loadouts/1/apply
execute if score perchLoadout Settings matches 1 run function end-practice:loadouts/2/apply
execute if score perchLoadout Settings matches 2 run function end-practice:loadouts/3/apply

execute if score perchLoadout Settings matches 3 run function end-practice:rng/random_loadout
execute if score perchLoadout Settings matches 3 if score loadout rng matches 0 run function end-practice:loadouts/1/apply
execute if score perchLoadout Settings matches 3 if score loadout rng matches 1 run function end-practice:loadouts/2/apply
execute if score perchLoadout Settings matches 3 if score loadout rng matches 2 run function end-practice:loadouts/3/apply