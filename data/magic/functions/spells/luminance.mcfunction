function magic:sound_effects/use_scroll

#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cLUMINANCE config_magic
function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

execute unless score @s lum_lvl matches 0..15 run scoreboard players set @s lum_lvl 15

particle minecraft:end_rod ~ ~ ~ 1 1 1 0 100 force

execute if score @s lum_lvl matches 0 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=0] replace #magic:luminance_replace
execute if score @s lum_lvl matches 1 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=1] replace #magic:luminance_replace
execute if score @s lum_lvl matches 2 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=2] replace #magic:luminance_replace
execute if score @s lum_lvl matches 3 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=3] replace #magic:luminance_replace
execute if score @s lum_lvl matches 4 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=4] replace #magic:luminance_replace
execute if score @s lum_lvl matches 5 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=5] replace #magic:luminance_replace
execute if score @s lum_lvl matches 6 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=6] replace #magic:luminance_replace
execute if score @s lum_lvl matches 7 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=7] replace #magic:luminance_replace
execute if score @s lum_lvl matches 8 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=8] replace #magic:luminance_replace
execute if score @s lum_lvl matches 9 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=9] replace #magic:luminance_replace
execute if score @s lum_lvl matches 10 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=10] replace #magic:luminance_replace
execute if score @s lum_lvl matches 11 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=11] replace #magic:luminance_replace
execute if score @s lum_lvl matches 12 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=12] replace #magic:luminance_replace
execute if score @s lum_lvl matches 13 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=13] replace #magic:luminance_replace
execute if score @s lum_lvl matches 14 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=14] replace #magic:luminance_replace
execute if score @s lum_lvl matches 15 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=15] replace #magic:luminance_replace

execute if score @s lum_lvl matches 0 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=0,waterlogged=true] replace water
execute if score @s lum_lvl matches 1 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=1,waterlogged=true] replace water
execute if score @s lum_lvl matches 2 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=2,waterlogged=true] replace water
execute if score @s lum_lvl matches 3 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=3,waterlogged=true] replace water
execute if score @s lum_lvl matches 4 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=4,waterlogged=true] replace water
execute if score @s lum_lvl matches 5 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=5,waterlogged=true] replace water
execute if score @s lum_lvl matches 6 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=6,waterlogged=true] replace water
execute if score @s lum_lvl matches 7 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=7,waterlogged=true] replace water
execute if score @s lum_lvl matches 8 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=8,waterlogged=true] replace water
execute if score @s lum_lvl matches 9 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=9,waterlogged=true] replace water
execute if score @s lum_lvl matches 10 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=10,waterlogged=true] replace water
execute if score @s lum_lvl matches 11 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=11,waterlogged=true] replace water
execute if score @s lum_lvl matches 12 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=12,waterlogged=true] replace water
execute if score @s lum_lvl matches 13 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=13,waterlogged=true] replace water
execute if score @s lum_lvl matches 14 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=14,waterlogged=true] replace water
execute if score @s lum_lvl matches 15 run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=15,waterlogged=true] replace water

fill ~ ~ ~ ~ ~ ~ minecraft:light[waterlogged=true] replace water

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/luminance