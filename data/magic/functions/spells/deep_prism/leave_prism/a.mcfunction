
## -- Executed as the player -- ##

tag @s add dp_caster

execute as @e[type=marker,tag=prism_anchor,distance=..60] store result score exit_X deep_prism run data get entity @s data.Exit.X 10.0
execute as @e[type=marker,tag=prism_anchor,distance=..60] store result score exit_Y deep_prism run data get entity @s data.Exit.Y 10.0
execute as @e[type=marker,tag=prism_anchor,distance=..60] store result score exit_Z deep_prism run data get entity @s data.Exit.Z 10.0
execute as @e[type=marker,tag=prism_anchor,distance=..60] store result score exit_W deep_prism run data get entity @s data.Exit.W 1.0

#create executor for part b
execute if score exit_W deep_prism matches 0 in minecraft:overworld run summon minecraft:marker 0 10 0 {Tags:["dp_exit"]}
execute if score exit_W deep_prism matches 1 in minecraft:the_nether run summon minecraft:marker 0 10 0 {Tags:["dp_exit"]}
execute if score exit_W deep_prism matches 2 in minecraft:the_end run summon minecraft:marker 0 10 0 {Tags:["dp_exit"]}

#off you go, champ.
execute if score exit_W deep_prism matches 0 in minecraft:overworld as @e[type=marker,tag=dp_exit] at @s run function magic:spells/deep_prism/leave_prism/b
execute if score exit_W deep_prism matches 1 in minecraft:the_nether as @e[type=marker,tag=dp_exit] at @s run function magic:spells/deep_prism/leave_prism/b
execute if score exit_W deep_prism matches 2 in minecraft:the_end as @e[type=marker,tag=dp_exit] at @s run function magic:spells/deep_prism/leave_prism/b

tag @s remove dp_caster