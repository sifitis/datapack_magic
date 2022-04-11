

particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove TTL VFX 1

execute facing ^0.08748866352592400522201866943496 ^ ^1.00000 positioned ^ ^ ^0.34928756 if score TTL VFX matches 1.. run function magic:visual_effects/soulflame_ring_r4_low_res/loop
