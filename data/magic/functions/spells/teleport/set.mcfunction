

#-------------------------------------COST CONTROL--------------------------------------------#
execute if score bTP_COST_ON_SET config_magic matches 1.. run scoreboard players operation XP_DELTA reduce_xp = cTELEPORT config_magic
execute if score bTP_COST_ON_SET config_magic matches 1.. run function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

tellraw @s [{"text":"Teleport coordinates set. [","color":"dark_aqua"},{"score":{"name":"Xpos","objective":"teleport"}},{"text":", "},{"score":{"name":"Ypos","objective":"teleport"}},{"text":", "},{"score":{"name":"Zpos","objective":"teleport"}},{"text":"]"}]

# -- Effects -- #
function magic:visual_effects/soulflame_ring_small
#function magic:visual_effects/soulflame_ring_med
particle minecraft:firework ~ ~ ~ 1 1 1 0.01 25


#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

tag @s add teleport_setter
item replace entity @s weapon.offhand with minecraft:air
function magic:spells/teleport/populate_teleport_data
tag @s remove teleport_setter