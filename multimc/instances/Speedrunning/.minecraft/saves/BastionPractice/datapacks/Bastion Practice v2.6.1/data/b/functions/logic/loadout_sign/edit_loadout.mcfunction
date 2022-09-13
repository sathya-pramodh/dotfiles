gamemode creative
function b:utils/loadout/apply
title @s actionbar {"text":"Editing Loadout","color":"gold"}
playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1.05
data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function b:logic/loadout_sign/save_loadout"}}',Text2:'{"text":"Loadout","color":"#FFFFFF"}',Text3:'{"text":"Save","color":"#35FF21"}'}