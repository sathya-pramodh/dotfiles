advancement revoke @s only end-practice:fountain_preset_3
tp @p 70 23 -20 90 0
gamemode creative @p
tag @p add editor
execute at @s run playsound minecraft:block.anvil.place ambient @s

# Give common items
replaceitem entity @p hotbar.0 obsidian
replaceitem entity @p hotbar.1 respawn_anchor
replaceitem entity @p hotbar.2 glowstone
replaceitem entity @p hotbar.3 cobblestone
replaceitem entity @p hotbar.4 cobblestone_slab
replaceitem entity @p hotbar.5 armor_stand{display: {Lore: ['[{"text":"Place this where","italic":false}]', '[{"text":"you want to spawn","italic":false}]'], Name: '[{"text":"Spawn","italic":"false"}]'}}