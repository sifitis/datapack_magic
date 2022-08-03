#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cSALAMANDER config_magic
function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

playsound minecraft:block.bubble_column.upwards_inside master @s ~ ~ ~ 3 0
scoreboard players add @s persistance 1
effect give @s minecraft:fire_resistance 300 9 true

scoreboard objectives add cd_salamander dummy
scoreboard players set @s cd_salamander 6000
scoreboard players set CD_TTL cd_salamander 6000

tag @s add salamander