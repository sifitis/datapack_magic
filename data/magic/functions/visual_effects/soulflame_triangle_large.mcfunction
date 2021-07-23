
#LEG DISTANCE: 0.17320508075688772935274463415059
#SPACING: 0.12990381056766579701455847561294
#COUNT: 30

scoreboard objectives add VFX dummy
scoreboard players set TTL VFX 30
execute anchored feet positioned ~ ~0.2 ~3 facing ~ ~ ~1 facing ^0.5 ^ ^-0.86602540378443864676372317075294 run function magic:visual_effects/soulflame_triangle_large/loop

scoreboard players set TTL VFX 30
execute anchored feet positioned ~ ~0.2 ~3 facing ~ ~ ~1 facing ^-0.5 ^ ^-0.86602540378443864676372317075294 run function magic:visual_effects/soulflame_triangle_large/loop

scoreboard players set TTL VFX 30
execute anchored feet positioned ~-2.5980762113533159402911695122588 ~0.2 ~-1.5 facing ~1 ~ ~ run function magic:visual_effects/soulflame_triangle_large/loop

scoreboard objectives remove VFX