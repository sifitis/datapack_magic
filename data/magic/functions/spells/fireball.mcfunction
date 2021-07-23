function magic:sound_effects/use_scroll

#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cFIREBALL config_magic
function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

playsound minecraft:entity.ghast.shoot master @s ~ ~ ~ 1 0.7
playsound minecraft:entity.ghast.shoot master @s ~ ~ ~ 1 0
particle minecraft:flame ~ ~1.7 ~ 0 0 0 0.3 300 force
particle minecraft:lava ~ ~0.1 ~ 1 0 1 0.3 100 force
execute as @e[distance=1..5,type=#magic:mob] run data merge entity @s {Fire:300}

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/fireball