
## -- This is a persistant function that operates as long as the spell is active -- #

#effect of appearing rings
execute if score @s cd_mtp_engage matches 20.. run function magic:visual_effects/soulflame_ring_small
execute if score @s cd_mtp_engage matches 20.. if score @s cd_mtp_engage <= R1_start cd_mtp_engage run function magic:visual_effects/soulflame_ring_med
execute if score @s cd_mtp_engage matches 20.. if score @s cd_mtp_engage <= R1_start cd_mtp_engage run function magic:visual_effects/soulflame_triangle_large
execute if score @s cd_mtp_engage matches 20.. if score @s cd_mtp_engage <= R2_start cd_mtp_engage run function magic:visual_effects/soulflame_ring_large
execute if score @s cd_mtp_engage matches 20.. if score @s cd_mtp_engage <= R3_start cd_mtp_engage run particle firework ~ ~1 ~ 0.3 1 0.3 0 10 force

execute if score @s cd_mtp_engage matches 20.. if score @s cd_mtp_engage <= R3_start cd_mtp_engage if entity @e[distance=..1,type=!marker] run function magic:spells/mass_teleport/teleport_entity

#some sparkles for when the rings appear
execute if score @s cd_mtp_engage = R1_start cd_mtp_engage run particle firework ~ ~0.2 ~ 1 0 1 0.1 100 force
execute if score @s cd_mtp_engage = R2_start cd_mtp_engage run particle firework ~ ~0.2 ~ 1 0 1 0.1 100 force
execute if score @s cd_mtp_engage = R3_start cd_mtp_engage run particle soul_fire_flame ~ ~0.3 ~ 0 0 0 1 500 force
execute if score @s cd_mtp_engage = R3_start cd_mtp_engage run particle firework ~ ~1 ~ 0.3 1 0.3 0 100 force

#aaaand when it disappears
execute if score @s cd_mtp_engage matches 20 run particle soul_fire_flame ~ ~0.1 ~ 0.6 0 0.6 1 500 force

execute if score @s cd_mtp_engage matches 1.. run scoreboard players remove @s cd_mtp_engage 1
execute if score @s cd_mtp_engage matches ..0 run kill @s