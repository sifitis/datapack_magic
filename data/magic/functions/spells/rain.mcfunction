function magic:sound_effects/use_scroll

#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cRAIN config_magic
function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

scoreboard objectives add rain dummy
function math:random
scoreboard players operation N rain = X m_random
scoreboard players operation N rain %= CONST_10e2 m_constants

playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 0

execute if score N rain > STORM_% config_magic run weather rain 900
execute if score N rain > STORM_% config_magic run title @a actionbar {"text":"A strange magic suffuses the atmosphere","color":"blue"}

execute if score N rain <= STORM_% config_magic run weather thunder 900
execute if score N rain <= STORM_% config_magic run title @a actionbar {"text":"An unusually powerful magic darkens the sky","color":"dark_gray"}

scoreboard objectives remove rain

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/rain_givebook