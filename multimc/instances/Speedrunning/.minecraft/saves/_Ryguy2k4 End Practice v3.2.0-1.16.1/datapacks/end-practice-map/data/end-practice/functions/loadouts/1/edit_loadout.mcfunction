execute unless score editing Loadouts matches 1 run gamemode creative @p
execute unless score editing Loadouts matches 1 run tag @p add editor
execute unless score editing Loadouts matches 1 run function end-practice:loadouts/1/apply
execute unless score editing Loadouts matches 1 run title @p actionbar {"text":"Editing Loadout","color":"gold"}
execute unless score editing Loadouts matches 1 run playsound minecraft:ui.button.click block @p ~ ~ ~ 1 1.05
execute unless score editing Loadouts matches 1 run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function end-practice:loadouts/1/save_loadout"}}',Text2:'{"text":"Loadout 1","color":"white"}',Text3:'{"text":"Click to Save","color":"green"}'}
scoreboard players set editing Loadouts 1