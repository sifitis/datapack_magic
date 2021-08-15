function magic:sound_effects/use_scroll

#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cMM_BLESSING config_magic
function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

playsound minecraft:block.bubble_column.upwards_inside master @s ~ ~ ~ 3 0
tag @s add mm_blessing
scoreboard players add @s persistance 1

scoreboard objectives add cd_mm_blessing dummy
scoreboard players operation @s cd_mm_blessing = ttlMM_BLESSING config_magic
scoreboard players operation CD_TTL cd_mm_blessing = ttlMM_BLESSING config_magic

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/mm_blessing