function magic:sound_effects/use_scroll

#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cLUMINANCE config_magic
function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

particle minecraft:end_rod ~ ~ ~ 1 1 1 0 100 force
fill ~ ~ ~ ~ ~ ~ minecraft:light replace #magic:luminance_replace
fill ~ ~ ~ ~ ~ ~ minecraft:light[waterlogged=true] replace water

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/luminance