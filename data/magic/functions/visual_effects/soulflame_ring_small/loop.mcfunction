

particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove TTL VFX 1

execute facing ^0.17632698070846497347109038686862 ^ ^1.00000 positioned ^ ^ ^0.1749776 if score TTL VFX matches 1.. run function magic:visual_effects/soulflame_ring_small/loop
