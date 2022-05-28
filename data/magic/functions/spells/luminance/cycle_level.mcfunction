scoreboard players add @s lum_lvl 1
scoreboard players operation @s lum_lvl %= CONST_16 m_constants
title @s actionbar [{"text":"Luminance level: ","color":"yellow"},{"score":{"name":"@s","objective":"lum_lvl"},"color":"yellow"}]

#Book return

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/luminance