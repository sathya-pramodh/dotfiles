# get number of slots
scoreboard players set numListSlots CONSTANT 0

execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[0].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[1].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[2].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[3].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[4].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[5].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[6].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[7].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[9].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[10].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[11].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[12].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[13].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[14].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[15].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[16].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[18].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[19].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[20].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[21].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[22].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[23].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[24].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0
execute store result score bool ChestMenu run data get storage minecraft:list_auto Items[25].tag.saved
execute if score bool ChestMenu matches 1 run scoreboard players add numListSlots CONSTANT 1
execute if score bool ChestMenu matches 1 run scoreboard players set bool ChestMenu 0

# get random number
summon area_effect_cloud 0 0 0 {Tags:["random_list_auto"],Duration:500}
execute store result score list rng run data get entity @e[type=area_effect_cloud,tag=random_list_auto,limit=1] UUID[0] 1
scoreboard players operation list rng %= numListSlots CONSTANT
scoreboard players add list rng 1
kill @e[tag=random_list_auto]

# load corresponding slot
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[0]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[1]  
function end-practice:one_cycle_practice/index_list_auto  
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[2]  
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[3]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[4]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[5]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[6]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[7]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[9]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[10]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[11]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[12]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[13]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[14]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[15]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[16]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[18]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[19]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[20]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[21]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[22]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[23]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[24]
function end-practice:one_cycle_practice/index_list_auto
data modify storage minecraft:list_auto currentItem set from storage minecraft:list_auto Items[25]
function end-practice:one_cycle_practice/index_list_auto