
## -- This is a persistant function that operates as long as the spell is active -- #

#effect of rings

#execute if score @s cd_gateway matches 0 run function magic:spells/gateway/engage/portal_effects
execute if score @s cd_gateway matches 0 run function magic:visual_effects/soulflame_ring_small

execute if score @s cd_gateway matches 0 facing ~1 ~ ~ positioned ~-1 ~ ~ run function magic:visual_effects/soulflame_ring_small_half
execute if score @s cd_gateway matches 0 facing ~-0.5 ~ ~.86602 positioned ~0.5 ~ ~-.86602 run function magic:visual_effects/soulflame_ring_small_half
execute if score @s cd_gateway matches 0 facing ~-0.5 ~ ~-.86602 positioned ~0.5 ~ ~.86602 run function magic:visual_effects/soulflame_ring_small_half

execute if score @s cd_gateway matches -4 run function magic:visual_effects/soulflame_ring_r4_low_res

execute if score @s cd_gateway matches -8 run function magic:visual_effects/soulflame_ring_large

execute if score @s cd_gateway matches 0 run particle firework ~ ~1 ~ 0.3 1 0.3 0 30 force
execute if score @s cd_gateway matches -6 run particle firework ~ ~1 ~ 0.3 1 0.3 0 30 force

#Ambient effects
execute if score @s cd_gateway matches 0 run particle enchant ~ ~1 ~ 2 2 2 0 5 force
execute if score @s cd_gateway matches 0 run playsound minecraft:block.beacon.ambient ambient @a ~ ~ ~ 0.3 0

execute if score @s cd_gateway matches ..0 if entity @e[distance=..1,type=!marker] run function magic:spells/gateway/teleport_entity

#Will continue to count down until 0 where it will loop forever
scoreboard players remove @s cd_gateway 1
execute if score @s cd_gateway matches ..-13 run scoreboard players set @s cd_gateway 0