function magic:sound_effects/use_scroll

#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cDISPEL config_magic
function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

say Poof!

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/dispel