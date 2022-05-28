
scoreboard objectives add VFX dummy
scoreboard players set TTL VFX 18
execute anchored feet positioned ~ ~0.2 ~ facing ^1 ^ ^ facing ^-0.08816349035423248673554519343431 ^ ^1.0 run function magic:visual_effects/soulflame_ring_small/loop
scoreboard objectives remove VFX