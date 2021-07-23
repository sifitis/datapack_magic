

particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove TTL VFX 1

execute positioned ^ ^ ^0.17320508075688772935274463415059 if score TTL VFX matches 1.. run function magic:visual_effects/soulflame_triangle_large/loop
