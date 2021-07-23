
scoreboard objectives add VFX dummy
scoreboard players set TTL VFX 120
execute anchored feet positioned ~ ~0.2 ~3 facing ~1 ~ ~ facing ^-0.02620388964152060201940291223699 ^ ^1.0 run function magic:visual_effects/soulflame_ring_large/loop
scoreboard objectives remove VFX