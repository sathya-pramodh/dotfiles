data remove storage minecraft:list_auto currentItem

data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[0]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[1]  
function end-practice:chest_menu/pages/list_manual/index_items  
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[2]  
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[3]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[4]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[5]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[6]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[7]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[9]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[10]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[11]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[12]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[13]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[14]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[15]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[16]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[18]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[19]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[20]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[21]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[22]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[23]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[24]
function end-practice:chest_menu/pages/list_manual/index_items
data modify storage minecraft:list_manual currentItem set from storage minecraft:list_manual Items[25]
function end-practice:chest_menu/pages/list_manual/index_items

data modify block 89 25 3 Items set from storage minecraft:list_manual Items

replaceitem block 89 25 3 container.8 minecraft:enchanted_book{isMenu:1b, page:4, selection:24, display:{Name:'[{"text":"Manual List","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Click to view Auto List","italic":false,"color":"white"}]']},HideFlags:34}
replaceitem block 89 25 3 container.17 minecraft:writable_book{isMenu:1b, page:4, selection:25, display:{Name:'[{"text":"Clear List","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Click to clear manual list","italic":false,"color":"white"}]','[{"text":"Be careful, all your saved heights will be lost","italic":false,"color":"red"}]']},HideFlags:34}
replaceitem block 89 25 3 container.26 minecraft:furnace_minecart{isMenu:1b, page:4, selection:26, display:{Name:'[{"text":"Import Height","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Click to load imported height","italic":false,"color":"white"}]','[{"text":"Make sure to run import command first","italic":false,"color":"white"}]']},HideFlags:34}
