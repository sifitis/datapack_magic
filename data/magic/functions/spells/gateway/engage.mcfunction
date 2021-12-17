function magic:sound_effects/use_scroll

say B

#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cGATEWAY config_magic
function magic:reduce_xp
#---------------------------------------------------------------------------------------------#
 
tag @s add teleport_caster
summon minecraft:marker ~ ~ ~ {Tags:["persistant","gateway_entry","new","sifMagic"]}
scoreboard objectives add cd_gateway dummy

function math:random
scoreboard players operation gateID gateway = X m_random

execute as @e[distance=..1,limit=1,type=marker,tag=gateway_entry] as @s[tag=new] run function magic:spells/gateway/prepare_marker

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

function magic:spells/gateway/engage/lock_tome
item replace entity @s weapon.offhand with minecraft:air
tag @s remove teleport_caster