

#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cDPRISM config_magic
function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

#scoreboard objectives remove deep_prism
scoreboard objectives add deep_prism dummy

tag @s add dprism
scoreboard players add @s persistance 1

tellraw @s {"text":"The space around you begins to fold...","color":"dark_purple"}

scoreboard objectives add cd_dprism dummy
scoreboard players operation @s cd_dprism = ttlDPRISM config_magic
scoreboard players operation CD_TTL cd_dprism = ttlDPRISM config_magic

function magic:spells/deep_prism/calc_prism_pos

#generate the chamber if player doesn't already have one
execute as @s[tag=!PERM_dp_gen] run function magic:spells/deep_prism/generate_chamber/a

#forceload the prism
function magic:spells/deep_prism/forceload_prism/a

#Various effects
function magic:sound_effects/use_scroll
playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 2
particle minecraft:crit ~ ~ ~ 1 1 1 2 500 force
function magic:visual_effects/witch_triangle_large

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/deep_prism