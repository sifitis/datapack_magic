
## -- Executed as the teleported player -- ##

# Requires a Pos[] and Rot[] array as well as a Dim value in magic:better_tp temp

tag @s add better_tp_subject
scoreboard objectives add better_tp dummy
scoreboard players set Dim_check better_tp 1

# Store Dim data in scoreboard
execute store result score Dim better_tp run data get storage magic:better_tp temp.Dim

# Create teleport executor for part b
execute if score Dim better_tp matches 0 in minecraft:overworld run summon minecraft:area_effect_cloud 0 10 0 {Tags:["better_tp"],Duration:1}
execute if score Dim better_tp matches 1 in minecraft:the_nether run summon minecraft:area_effect_cloud 0 10 0 {Tags:["better_tp"],Duration:1}
execute if score Dim better_tp matches 2 in minecraft:the_end run summon minecraft:area_effect_cloud 0 10 0 {Tags:["better_tp"],Duration:1}
execute if score Dim better_tp matches 3 in magic:deep_prism run summon minecraft:area_effect_cloud 0 10 0 {Tags:["better_tp"],Duration:1}

# Execute part b
tellraw @a {"score":{"objective":"better_tp","name":"Dim"}}
execute if score Dim better_tp matches 0 in minecraft:overworld as @e[type=area_effect_cloud,tag=better_tp] at @s run function magic:better_teleport/better_teleport_b
execute if score Dim better_tp matches 1 in minecraft:the_nether as @e[type=area_effect_cloud,tag=better_tp] at @s run function magic:better_teleport/better_teleport_b
execute if score Dim better_tp matches 2 in minecraft:the_end as @e[type=area_effect_cloud,tag=better_tp] at @s run function magic:better_teleport/better_teleport_b
execute if score Dim better_tp matches 3 in magic:deep_prism as @e[type=area_effect_cloud,tag=better_tp] at @s run function magic:better_teleport/better_teleport_b

#Cleanup
scoreboard objectives remove better_tp
tag @s remove better_tp_subject