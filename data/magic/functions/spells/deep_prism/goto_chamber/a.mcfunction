
## -- Executed as the player -- ##

tag @s add dp_caster

#collect original position data for exiting later
execute store result score user_X deep_prism run data get entity @s Pos[0] 10
execute store result score user_Y deep_prism run data get entity @s Pos[1] 10
execute store result score user_Z deep_prism run data get entity @s Pos[2] 10

execute if predicate predicate_lib:dimension/in_overworld run scoreboard players set user_W deep_prism 0
execute if predicate predicate_lib:dimension/in_nether run scoreboard players set user_W deep_prism 1
execute if predicate predicate_lib:dimension/in_end run scoreboard players set user_W deep_prism 2

#create executor for part b
execute in magic:deep_prism run summon minecraft:marker 0 10 0 {Tags:["dp_goto","new"]}

#off you go, champ.
execute in magic:deep_prism as @e[type=marker,tag=dp_goto] as @s[tag=new] at @s run function magic:spells/deep_prism/goto_chamber/b

tag @s remove dp_caster