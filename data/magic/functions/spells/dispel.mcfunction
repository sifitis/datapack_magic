function magic:sound_effects/use_scroll

#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cDISPEL config_magic
function magic:reduce_xp
#---------------------------------------------------------------------------------------------#
tellraw @a[distance=..16] [{"text":"An antimagic pulse from ","color":"#CC2222"},{"selector":"@s","color":"#990000"},{"text":" cleared all spells and effects!","color":"#CC2222"}]
execute as @a[distance=..16] at @s run function magic:sound_effects/abjurate
execute as @e[distance=..16] at @s run function magic:abjurate
execute as @a[distance=..16] at @s run particle dust 1 0 .1 1 ~ ~.5 ~ .2 1 .2 0 200 force
particle dust 1 0 .1 1 ~ ~.5 ~ 3 3 3 0 200 force @a

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/dispel