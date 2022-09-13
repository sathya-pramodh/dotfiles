scoreboard objectives add bastiongen dummy
scoreboard objectives add settings dummy
scoreboard objectives add timer dummy
scoreboard objectives add chest_menu dummy
scoreboard objectives add mode dummy
scoreboard objectives add carrot_stick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add dropped_pick minecraft.dropped:minecraft.iron_pickaxe
scoreboard objectives add dropped_plate minecraft.dropped:minecraft.iron_chestplate
scoreboard objectives add info dummy "\u00A76Run Info"
scoreboard objectives add _piglins dummy
scoreboard objectives add _bartering dummy
scoreboard objectives add _gold dummy
scoreboard objectives setdisplay sidebar

execute unless score tTreasure settings = tTreasure settings run function b:utils/_init/settings_default
scoreboard players set #running mode 0
team add anger_range
team modify anger_range color gold
scoreboard players set freeze mode 0
scoreboard players set glow mode 0
scoreboard players set Piglins info 0
scoreboard players set Barters info 0
scoreboard players set #initialized settings 0

schedule clear b:logic/start_button/_mode/_routing/items/_glow/glow_effect

function b:utils/rng/generate_seed

execute in overworld run forceload remove all
execute in overworld run forceload add -30000000 1602
execute in overworld run forceload add 0 0
execute in overworld positioned -30000000 0 1602 unless block ~ ~ ~ yellow_shulker_box run setblock ~ ~ ~ yellow_shulker_box
execute in the_nether run forceload remove all
execute in the_nether run forceload add 0 0

function b:utils/_init/place_overworld_structure
function b:utils/_init/place_nether_structure


function b:logic/reset_player/on_init