execute if entity @s[nbt={SelectedItem:{tag:{glow:1}}}] run function b:logic/start_button/_mode/_routing/items/glow_item
execute if entity @s[nbt={SelectedItem:{tag:{freeze:1}}}] run function b:logic/start_button/_mode/_routing/items/freeze_item
execute if entity @s[nbt={SelectedItem:{tag:{reset_bastion:1}}}] run function b:logic/start_button/_mode/_routing/items/reset_item
execute if entity @s[nbt={SelectedItem:{tag:{reset:1}}}] run function b:logic/reset_player/show_timer
scoreboard players set @s carrot_stick 0