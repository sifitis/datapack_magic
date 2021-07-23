

#-------------------------------------COST CONTROL--------------------------------------------#
execute if score bTP_COST_ON_SET config_magic matches ..0 run scoreboard players operation XP_DELTA reduce_xp = cTELEPORT config_magic
execute if score bTP_COST_ON_SET config_magic matches ..0 run function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

data merge storage magic:better_tp {temp:{Pos:[0.0d,0.0d,0.0d],Rot:[0.0d,0.0d],Dim:0}}

data modify storage magic:better_tp temp.Pos set from entity @s Inventory[{Slot:-106b}].tag.TeleportData.Pos
data modify storage magic:better_tp temp.Rot set from entity @s Inventory[{Slot:-106b}].tag.TeleportData.Rot
data modify storage magic:better_tp temp.Dim set from entity @s Inventory[{Slot:-106b}].tag.TeleportData.Dim

particle minecraft:soul_fire_flame ~ ~ ~ 0.2 1 0.2 0.05 300
particle minecraft:firework ~ ~ ~ 1 1 1 0 100
particle minecraft:firework ~ ~ ~ 0 1 0 1 100
function magic:better_teleport/better_teleport_a

#tag @s add teleport_engage
#tag @s add persistant

tag @s add tp_next_tick_flash
schedule function magic:visual_effects/tp_next_tick_flash/a 1t append

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

execute positioned ~ ~ ~ run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 1 0.2 0.05 500

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/teleport
