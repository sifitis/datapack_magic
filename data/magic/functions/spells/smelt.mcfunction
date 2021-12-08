function magic:sound_effects/use_scroll

#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cSMELT config_magic
function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

tag @s add smelt
scoreboard players add @s persistance 1

tellraw @s {"text":"Your hands begin to superheat. Place smeltable item in your mainhand.","color":"red"}

scoreboard objectives add cd_smelt dummy
scoreboard players operation @s cd_smelt = ttlSMELT config_magic
scoreboard players operation CD_TTL cd_smelt = ttlSMELT config_magic

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/smelt