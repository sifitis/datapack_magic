function magic:sound_effects/use_scroll

function magic:raytrace/raytrace_type1
execute at @e[tag=ray_target] run summon minecraft:marker ~ ~ ~ {Tags:["geyser","sifMagic","new","persistant"]}
kill @e[tag=ray_target]
execute as @e[tag=geyser] run scoreboard objectives add cd_geyser dummy

execute as @e[tag=geyser] as @s[tag=new] run scoreboard players operation @s cd_geyser = ttlGEYSER config_magic
execute as @e[tag=geyser] as @s[tag=new] run scoreboard players operation CD_TTL cd_geyser = ttlGEYSER config_magic

#-------------------------------------COST CONTROL--------------------------------------------#
execute if entity @e[tag=new] run scoreboard players operation XP_DELTA reduce_xp = cGEYSER config_magic
execute if entity @e[tag=new] run function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

execute as @e[tag=geyser] as @e[tag=new] at @s run playsound minecraft:block.bubble_column.upwards_inside master @a ~ ~ ~ 3 0
execute as @e[tag=geyser] as @e[tag=new] at @s run playsound minecraft:item.totem.use master @a ~ ~ ~ 0.5 2
execute as @e[tag=geyser] as @e[tag=new] at @s run particle minecraft:cloud ~ ~0.5 ~ 0.2 0.2 0.2 0.5 50 force

execute as @e[tag=geyser] as @s[tag=new] run tag @s remove new

#function magic:spells/geyser/persist

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/geyser