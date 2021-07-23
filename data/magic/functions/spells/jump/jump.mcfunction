function magic:sound_effects/use_scroll

#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cJUMP config_magic
function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

tag @s add magic_jump
effect give @s minecraft:levitation 1 40 true
particle minecraft:dust 0.8 0.8 0.8 5 ~ ~0.5 ~ 0.3 0.1 0.3 0 20 force
schedule function magic:spells/jump/clear_levitation/a 1t append

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/jump