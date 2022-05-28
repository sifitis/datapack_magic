
#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cLEVITATE config_magic
function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

effect give @s levitation 30 5 true

scoreboard objectives add cd_levitate dummy
scoreboard players set @s cd_levitate 600
scoreboard players set CD_TTL cd_levitate 600

scoreboard players add @s persistance 1
tag @s add levitate