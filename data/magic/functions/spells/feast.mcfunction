#function magic:sound_effects/use_scroll

#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cFEAST config_magic
function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

playsound minecraft:entity.generic.eat master @s ~ ~ ~ 1 1
playsound minecraft:block.amethyst_cluster.place master @s ~ ~ ~ 1 0
particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 100 force
particle minecraft:dust_color_transition 1 1 0 1 1 0.7 0 ~ ~ ~ 1 1 1 0 100 force
effect give @s minecraft:saturation 1 20 true

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/feast