execute in the_nether run forceload add 0 0

execute store result score #pearls info run clear @a ender_pearl 0
execute store result score #obsidian info run clear @a obsidian 0
execute store result score #string info run clear @a string 0

data merge block 1 138 0 {Text1:'{"text":"Previous Run:","bold":true,"color":"gold"}'}
data merge block 1 138 0 {Text2:"[\"Time: \",{\"nbt\":\"m\",\"storage\":\"timer\",\"interpret\":true},\":\",{\"nbt\":\"s\",\"storage\":\"timer\",\"interpret\":true},\".\",{\"nbt\":\"ms\",\"storage\":\"timer\",\"interpret\":true}]"}
data merge block 1 138 0 {Text3:"[\"Piglins: \",{\"score\":{\"name\":\"Piglins\",\"objective\":\"info\"}}]"}
data merge block 1 138 0 {Text4:"[\"Barters: \",{\"score\":{\"name\":\"Barters\",\"objective\":\"info\"}}]"}
data merge block 0 138 0 {Text1:"[\"Pearls: \",{\"score\":{\"name\":\"#pearls\",\"objective\":\"info\"}}]"}
data merge block 0 138 0 {Text2:"[\"Obsidian: \",{\"score\":{\"name\":\"#obsidian\",\"objective\":\"info\"}}]"}
data merge block 0 138 0 {Text3:"[\"String: \",{\"score\":{\"name\":\"#string\",\"objective\":\"info\"}}]"}