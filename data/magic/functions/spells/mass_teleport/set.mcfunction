function magic:sound_effects/use_scroll

#-------------------------------------COST CONTROL--------------------------------------------#
execute if score bMTP_COST_ON_SET config_magic matches 1.. run scoreboard players operation XP_DELTA reduce_xp = cMASS_TP config_magic
execute if score bMTP_COST_ON_SET config_magic matches 1.. run function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

tag @s add teleport_setter

execute store result storage temp:temp magic.spell.mass_teleport.X double 1 run data get entity @s Pos[0]
execute store result storage temp:temp magic.spell.mass_teleport.Y double 1 run data get entity @s Pos[1]
execute store result storage temp:temp magic.spell.mass_teleport.Z double 1 run data get entity @s Pos[2]
execute store result storage temp:temp magic.spell.mass_teleport.A double 1 run data get entity @s Rotation[0]
execute store result storage temp:temp magic.spell.mass_teleport.E double 1 run data get entity @s Rotation[1]

function magic:spells/mass_teleport/populate_teleport_data with storage temp:temp magic.spell.mass_teleport

tellraw @s [{"text":"Mass teleport coordinates set. [","color":"dark_aqua"},{"score":{"name":"Xpos","objective":"mass_tp"}},{"text":", "},{"score":{"name":"Ypos","objective":"mass_tp"}},{"text":", "},{"score":{"name":"Zpos","objective":"mass_tp"}},{"text":"]"}]

# -- Effects -- #
function magic:visual_effects/soulflame_ring_small
function magic:visual_effects/soulflame_ring_med
function magic:visual_effects/soulflame_ring_large

particle minecraft:firework ~ ~ ~ 1 1 1 0.01 25


#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
tag @s remove teleport_setter