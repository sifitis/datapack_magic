
data merge storage magic:better_tp {temp:{Pos:[0.0d,0.0d,0.0d],Rot:[0.0d,0.0d],Dim:0}}

data modify storage magic:better_tp temp.Pos set from entity @s data.TeleportData.Pos
data modify storage magic:better_tp temp.Rot set from entity @s data.TeleportData.Rot
data modify storage magic:better_tp temp.Dim set from entity @s data.TeleportData.Dim

particle minecraft:soul_fire_flame ~ ~ ~ 0.2 1 0.2 0.05 300
particle minecraft:firework ~ ~ ~ 1 1 1 0 100
particle minecraft:firework ~ ~ ~ 0 1 0 1 100
function magic:sound_effects/teleport

execute as @e[distance=..1,type=!marker] run tag @s add tp_next_tick_flash
schedule function magic:visual_effects/tp_next_tick_flash/a 1t append
execute as @e[distance=..1,type=!marker] run function magic:better_teleport/better_teleport_a