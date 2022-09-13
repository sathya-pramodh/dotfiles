gamemode adventure @p
tag @p remove editor
scoreboard players set editing Loadouts 0
function end-practice:loadouts/2/store
clear @p
title @p actionbar {"text":"Saved Loadout","color":"green"}
playsound ui.button.click block @p ~ ~ ~ 1 1
data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function end-practice:loadouts/2/edit_loadout"}}',Text2:'{"text":"Loadout 2","color":"white"}',Text3:'{"text":"Click to Edit","color":"yellow"}'}