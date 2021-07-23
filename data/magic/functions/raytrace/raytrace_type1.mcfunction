#--Initialize Parameters--#

scoreboard objectives add ray_data dummy

#--Initialize Tracer--#
tag @s add ray_caster
execute anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^ {Duration:1,Tags:["ray_tracer"]}
#execute as @e[tag=ray_tracer] at @s rotated as @e[tag=ray_caster,limit=1] run tp @s ^ ^ ^ ~ ~
scoreboard players operation ttl ray_data = MAX_RAY_LEN1 config_magic

#--run loop--#
execute as @e[tag=ray_tracer] at @s rotated as @e[tag=ray_caster,limit=1] run function magic:raytrace/raytrace_type1/loop

tag @s remove ray_caster
scoreboard objectives remove ray_data