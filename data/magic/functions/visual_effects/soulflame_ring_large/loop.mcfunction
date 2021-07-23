

particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove TTL VFX 1

execute facing ^0.05240777928304120403880582447398 ^ ^1.00000 positioned ^ ^ ^0.1571156 if score TTL VFX matches 1.. run function magic:visual_effects/soulflame_ring_large/loop
