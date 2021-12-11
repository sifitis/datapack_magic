
scoreboard objectives add VFX dummy

function math:random
scoreboard players operation NX VFX = X m_random
scoreboard players operation NX VFX %= CONST_21 m_constants

execute if score NX VFX matches 0 positioned ~-10 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y
execute if score NX VFX matches 1 positioned ~-9 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y
execute if score NX VFX matches 2 positioned ~-8 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y
execute if score NX VFX matches 3 positioned ~-7 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y
execute if score NX VFX matches 4 positioned ~-6 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y
execute if score NX VFX matches 5 positioned ~-5 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y
execute if score NX VFX matches 6 positioned ~-4 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y
execute if score NX VFX matches 7 positioned ~-3 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y
execute if score NX VFX matches 8 positioned ~-2 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y
execute if score NX VFX matches 9 positioned ~-1 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y

execute if score NX VFX matches 10 positioned ~ ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y

execute if score NX VFX matches 11 positioned ~1 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y
execute if score NX VFX matches 12 positioned ~2 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y
execute if score NX VFX matches 13 positioned ~3 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y
execute if score NX VFX matches 14 positioned ~4 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y
execute if score NX VFX matches 15 positioned ~5 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y
execute if score NX VFX matches 16 positioned ~6 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y
execute if score NX VFX matches 17 positioned ~7 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y
execute if score NX VFX matches 18 positioned ~8 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y
execute if score NX VFX matches 19 positioned ~9 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y
execute if score NX VFX matches 20 positioned ~10 ~ ~ run function magic:visual_effects/witch_shafts_10/rand_y

#scoreboard objectives remove VFX