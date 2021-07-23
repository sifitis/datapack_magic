#function magic:sound_effects/use_scroll

#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cVITALIZE config_magic
function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

playsound minecraft:item.trident.return master @s ~ ~ ~ 1 0
playsound minecraft:block.amethyst_cluster.place master @s ~ ~ ~ 1 0
particle minecraft:dust_color_transition 1 0 0 1 0.5 0 0 ~ ~ ~ 1 1 1 0 100 force
particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 200
effect give @s minecraft:regeneration 1 5 true

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/vitalize