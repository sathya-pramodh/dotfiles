gamemode survival
function b:utils/loadout/store
clear @s
title @s actionbar {"text":"Saved Loadout","color":"#35FF21"}
playsound ui.button.click block @s ~ ~ ~ 1 1
data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function b:logic/loadout_sign/edit_loadout"}}',Text2:'{"text":"Loadout","color":"#FFFFFF"}',Text3:'{"text":"Edit","color":"#F8EE16"}'}