
scoreboard objectives add VFX dummy
scoreboard players set TTL VFX 72
execute anchored feet positioned ~ ~0.2 ~4 facing ~1 ~ ~ facing ^-0.04374433176296200261100933471748 ^ ^1.0 run function magic:visual_effects/soulflame_ring_r4_low_res/loop
scoreboard objectives remove VFX