
# -- Executor: player with persistance score

execute if score @s cd_dprism matches -1.. run scoreboard players remove @s cd_dprism 1
execute if score @s cd_dprism matches 1.. positioned ~ ~1 ~ run function magic:visual_effects/witch_shafts_10
execute if score @s cd_dprism matches 40..60 positioned ~ ~1 ~ run playsound minecraft:particle.soul_escape ambient @s ~ ~ ~ 0.2 0
execute if score @s cd_dprism matches 50..60 positioned ~ ~1 ~ run playsound minecraft:particle.soul_escape ambient @s ~ ~ ~ 0.1 1

execute if score @s cd_dprism matches 1.. run particle minecraft:enchant ~ ~ ~ 4 4 4 0 2 force

execute if score @s cd_dprism matches 50 run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 1.6
execute if score @s cd_dprism matches 40 run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 1.3
execute if score @s cd_dprism matches 30 run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 0.9
execute if score @s cd_dprism matches 20 run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 .6
execute if score @s cd_dprism matches 10 run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 0

# -- Once score reaches 0 -- #

execute if score @s cd_dprism matches 0 run particle minecraft:crit ~ ~ ~ 1 1 1 2 500 force
execute if score @s cd_dprism matches 0 run function magic:visual_effects/witch_triangle_large

execute if score @s cd_dprism matches 0 run function magic:spells/deep_prism/enter_prism

execute if score @s cd_dprism matches ..-2 run tag @s remove dprism
execute if score @s cd_dprism matches -2 run scoreboard players remove @s persistance 1

# -- I'm using this negative timer space to run some post-tp effects for free- sue me -- #
execute if score @s cd_dprism matches -1 run particle minecraft:crit ~ ~ ~ 1 1 1 2 500 force
execute if score @s cd_dprism matches -1 run function magic:visual_effects/witch_triangle_large
execute if score @s cd_dprism matches -1 run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0
execute if score @s cd_dprism matches -1 run playsound minecraft:entity.lightning_bolt.impact master @s ~ ~ ~ 0.2 0
#execute if score @s cd_dprism matches -1 run playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 2