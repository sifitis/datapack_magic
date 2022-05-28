
function math:random
scoreboard players operation NY VFX = X m_random
scoreboard players operation NY VFX %= CONST_21 m_constants

execute if score NY VFX matches 0 positioned ~ ~-2 ~ run function magic:visual_effects/witch_shafts_10/rand_z
execute if score NY VFX matches 1 positioned ~ ~-1.8 ~ run function magic:visual_effects/witch_shafts_10/rand_z
execute if score NY VFX matches 2 positioned ~ ~-1.6 ~ run function magic:visual_effects/witch_shafts_10/rand_z
execute if score NY VFX matches 3 positioned ~ ~-1.4 ~ run function magic:visual_effects/witch_shafts_10/rand_z
execute if score NY VFX matches 4 positioned ~ ~-1.2 ~ run function magic:visual_effects/witch_shafts_10/rand_z
execute if score NY VFX matches 5 positioned ~ ~-1 ~ run function magic:visual_effects/witch_shafts_10/rand_z
execute if score NY VFX matches 6 positioned ~ ~-.8 ~ run function magic:visual_effects/witch_shafts_10/rand_z
execute if score NY VFX matches 7 positioned ~ ~-.6 ~ run function magic:visual_effects/witch_shafts_10/rand_z
execute if score NY VFX matches 8 positioned ~ ~-.4 ~ run function magic:visual_effects/witch_shafts_10/rand_z
execute if score NY VFX matches 9 positioned ~ ~-.2 ~ run function magic:visual_effects/witch_shafts_10/rand_z

execute if score NY VFX matches 10 positioned ~ ~ ~ run function magic:visual_effects/witch_shafts_10/rand_z

execute if score NY VFX matches 11 positioned ~ ~.2 ~ run function magic:visual_effects/witch_shafts_10/rand_z
execute if score NY VFX matches 12 positioned ~ ~.4 ~ run function magic:visual_effects/witch_shafts_10/rand_z
execute if score NY VFX matches 13 positioned ~ ~.6 ~ run function magic:visual_effects/witch_shafts_10/rand_z
execute if score NY VFX matches 14 positioned ~ ~.8 ~ run function magic:visual_effects/witch_shafts_10/rand_z
execute if score NY VFX matches 15 positioned ~ ~1 ~ run function magic:visual_effects/witch_shafts_10/rand_z
execute if score NY VFX matches 16 positioned ~ ~1.2 ~ run function magic:visual_effects/witch_shafts_10/rand_z
execute if score NY VFX matches 17 positioned ~ ~1.4 ~ run function magic:visual_effects/witch_shafts_10/rand_z
execute if score NY VFX matches 18 positioned ~ ~1.6 ~ run function magic:visual_effects/witch_shafts_10/rand_z
execute if score NY VFX matches 19 positioned ~ ~1.8 ~ run function magic:visual_effects/witch_shafts_10/rand_z
execute if score NY VFX matches 20 positioned ~ ~2 ~ run function magic:visual_effects/witch_shafts_10/rand_z