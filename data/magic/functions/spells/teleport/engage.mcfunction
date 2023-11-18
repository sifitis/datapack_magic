function magic:sound_effects/use_scroll

#-------------------------------------COST CONTROL--------------------------------------------#
execute if score bTP_COST_ON_SET config_magic matches ..0 run scoreboard players operation XP_DELTA reduce_xp = cTELEPORT config_magic
execute if score bTP_COST_ON_SET config_magic matches ..0 run function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

data modify storage magic:better_tp temp.PosX set from entity @s Inventory[{Slot:-106b}].tag.TeleportData.Pos[0]
data modify storage magic:better_tp temp.PosY set from entity @s Inventory[{Slot:-106b}].tag.TeleportData.Pos[1]
data modify storage magic:better_tp temp.PosZ set from entity @s Inventory[{Slot:-106b}].tag.TeleportData.Pos[2]
data modify storage magic:better_tp temp.RotA set from entity @s Inventory[{Slot:-106b}].tag.TeleportData.Rot[0]
data modify storage magic:better_tp temp.RotE set from entity @s Inventory[{Slot:-106b}].tag.TeleportData.Rot[1]
data modify storage magic:better_tp temp.Dim set from entity @s Inventory[{Slot:-106b}].tag.TeleportData.Dim

particle minecraft:soul_fire_flame ~ ~ ~ 0.2 1 0.2 0.05 300
particle minecraft:firework ~ ~ ~ 1 1 1 0 100
particle minecraft:firework ~ ~ ~ 0 1 0 1 100

function magic:better_teleport with storage magic:better_tp temp

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
