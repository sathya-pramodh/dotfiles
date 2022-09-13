replaceitem entity @s enderchest.0 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.1 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.2 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.3 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.4 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.5 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.6 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.7 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.8 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.9 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.10 minecraft:barrier{isMenu:1b, page:1, display:{Name:'[{"text":"Empty","italic":false,"color":"red"}]'}}
replaceitem entity @s enderchest.11 minecraft:barrier{isMenu:1b, page:1, display:{Name:'[{"text":"Empty","italic":false,"color":"red"}]'}}
replaceitem entity @s enderchest.12 minecraft:barrier{isMenu:1b, page:1, display:{Name:'[{"text":"Empty","italic":false,"color":"red"}]'}}
replaceitem entity @s enderchest.13 minecraft:barrier{isMenu:1b, page:1, display:{Name:'[{"text":"Empty","italic":false,"color":"red"}]'}}
replaceitem entity @s enderchest.14 minecraft:barrier{isMenu:1b, page:1, display:{Name:'[{"text":"Empty","italic":false,"color":"red"}]'}}
replaceitem entity @s enderchest.15 minecraft:barrier{isMenu:1b, page:1, display:{Name:'[{"text":"Empty","italic":false,"color":"red"}]'}}
replaceitem entity @s enderchest.16 minecraft:barrier{isMenu:1b, page:1, display:{Name:'[{"text":"Empty","italic":false,"color":"red"}]'}}
replaceitem entity @s enderchest.17 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.18 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.19 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.20 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.21 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.22 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.23 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.24 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.25 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}
replaceitem entity @s enderchest.26 minecraft:gray_stained_glass_pane{isMenu:1b, page:1, display:{Name:'[{"text":""}]'}}

replaceitem entity @s enderchest.4 minecraft:piglin_banner_pattern{isMenu:1b, page:1, display:{Name:'[{"text":"Bastion Settings","italic":false,"color":"red"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Click on an item to cycle through its settings","italic":false,"color":"white"}]']},HideFlags:34}

replaceitem entity @s enderchest.22 minecraft:nether_star{isMenu:1b, page:1, selection:0, display:{Name:'[{"text":"Global Settings","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Click to edit","italic":false,"color":"white"}]']},HideFlags:2}

execute if score bastion settings matches -1 run function b:cm/pages/bastion/_items/random
execute if score bastion settings matches 0 run function b:cm/pages/bastion/_items/bridge
execute if score bastion settings matches 1 run function b:cm/pages/bastion/_items/stables
execute if score bastion settings matches 2 run function b:cm/pages/bastion/_items/treasure
execute if score bastion settings matches 3 run function b:cm/pages/bastion/_items/housing