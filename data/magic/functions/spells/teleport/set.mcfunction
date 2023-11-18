# executed as caster

function magic:sound_effects/use_scroll

#-------------------------------------COST CONTROL--------------------------------------------#
execute if score bTP_COST_ON_SET config_magic matches 1.. run scoreboard players operation XP_DELTA reduce_xp = cTELEPORT config_magic
execute if score bTP_COST_ON_SET config_magic matches 1.. run function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

# -- Effects -- #
function magic:visual_effects/soulflame_ring_small
#function magic:visual_effects/soulflame_ring_med
particle minecraft:firework ~ ~ ~ 1 1 1 0.01 25

item replace entity @s weapon.offhand with minecraft:air
execute store result storage temp:temp magic.spell.teleport.X double 1 run data get entity @s Pos[0]
execute store result storage temp:temp magic.spell.teleport.Y double 1 run data get entity @s Pos[1]
execute store result storage temp:temp magic.spell.teleport.Z double 1 run data get entity @s Pos[2]
execute store result storage temp:temp magic.spell.teleport.A double 1 run data get entity @s Rotation[0]
execute store result storage temp:temp magic.spell.teleport.E double 1 run data get entity @s Rotation[1]

function magic:spells/teleport/populate_teleport_data with storage temp:temp magic.spell.teleport
tellraw @s [{"text":"Teleport coordinates set.","color":"dark_aqua"}]