
## -- Executed as the teleported player -- ##

# Requires a Pos[] and Rot[] array as well as a Dim value in magic:better_tp temp

tag @s add better_tp_subject

execute as @e[type=area_effect_cloud,tag=new] run kill @s
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["better_tp","new"],Duration:1}


scoreboard objectives add better_tp dummy
scoreboard players set Dim_check better_tp 0
execute store result score Dim better_tp run data get storage magic:better_tp temp.Dim
execute if score Dim better_tp matches 0 if predicate predicate_lib:dimension/in_overworld run scoreboard players set Dim_check better_tp 1
execute if score Dim better_tp matches 1 if predicate predicate_lib:dimension/in_nether run scoreboard players set Dim_check better_tp 1
execute if score Dim better_tp matches 2 if predicate predicate_lib:dimension/in_end run scoreboard players set Dim_check better_tp 1
execute if score Dim better_tp matches 3 if predicate predicate_lib:dimension/in_deep_prism run scoreboard players set Dim_check better_tp 1

execute if score Dim_check better_tp matches 1 as @e[type=area_effect_cloud,tag=better_tp,distance=..1] as @s[tag=new] at @s run function magic:better_teleport/better_teleport_b
execute if score Dim_check better_tp matches 0 run tellraw @s {"text":"Unable to teleport across dimensions.","color":"red"}

scoreboard objectives remove better_tp
tag @s remove better_tp_subject