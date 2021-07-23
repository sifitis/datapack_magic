function magic:sound_effects/use_scroll

tag @e[limit=1,type=minecraft:zombie_villager,distance=..5] add spell_restore
data merge entity @e[tag=spell_restore,distance=..10,limit=1,sort=nearest] {ConversionTime:5}
execute as @e[tag=spell_restore,distance=..10] at @s run particle minecraft:dust_color_transition 0.05 0.4 0.1 10 0.63 0.400 0.372 ~ ~ ~ 1 1 1 0 100 force
execute as @e[tag=spell_restore,distance=..10] at @s run particle end_rod ~ ~5 ~ 0.3 5 0.3 0.1 1000 force
execute unless entity @e[tag=spell_restore,distance=..10] run title @s actionbar {"text":"No Villager Zombies in Range","color":"yellow"}

#-------------------------------------COST CONTROL--------------------------------------------#
execute if entity @e[tag=spell_restore,distance=..10] run scoreboard players operation XP_DELTA reduce_xp = cRESTORE config_magic
execute if entity @e[tag=spell_restore,distance=..10] run function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/restore