data remove storage minecraft:list_manual currentItem

data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[0]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[1]  
function end-practice:chest_menu/pages/list_auto/index_items  
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[2]  
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[3]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[4]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[5]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[6]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[7]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[9]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[10]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[11]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[12]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[13]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[14]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[15]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[16]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[18]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[19]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[20]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[21]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[22]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[23]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[24]
function end-practice:chest_menu/pages/list_auto/index_items
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[25]
function end-practice:chest_menu/pages/list_auto/index_items

data modify block 89 25 3 Items set from storage minecraft:list_auto Items

replaceitem block 89 25 3 container.8 minecraft:enchanted_book{isMenu:1b, page:3, selection:24, display:{Name:'[{"text":"Auto List","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Click to view Manual List","italic":false,"color":"white"}]']},HideFlags:34}
replaceitem block 89 25 3 container.17 minecraft:writable_book{isMenu:1b, page:3, selection:25, display:{Name:'[{"text":"Clear List","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Click to clear auto list","italic":false,"color":"white"}]','[{"text":"Be careful, all your saved heights will be lost","italic":false,"color":"red"}]']},HideFlags:34}
replaceitem block 89 25 3 container.26 minecraft:gray_stained_glass_pane{isMenu:1b, page:3, display:{Name:'[{"text":""}]'},HideFlags:34}