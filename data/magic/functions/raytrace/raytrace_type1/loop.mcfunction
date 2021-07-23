#--Executor: ray tracer--#

#particle minecraft:dust 1 0 0 2 ~ ~ ~ 0 0 0 0 1 force @a
scoreboard players remove ttl ray_data 1

execute positioned ^ ^ ^0.25 if score ttl ray_data matches 1.. if block ^ ^ ^ #magic:raytrace/raytrace_nonsolid_type1 run function magic:raytrace/raytrace_type1/loop
execute positioned ^ ^ ^0.25 if score ttl ray_data matches 1.. unless block ^ ^ ^ #magic:raytrace/raytrace_nonsolid_type1 run summon minecraft:area_effect_cloud ^ ^ ^ {Duration:1,Tags:["ray_target"]}

execute if score ttl ray_data matches ..0 run kill @s