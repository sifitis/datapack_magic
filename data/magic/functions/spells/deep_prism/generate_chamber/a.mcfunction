
##--Executed as the player--##

#generate executor
execute as @e[type=area_effect_cloud,tag=new] run kill @s
execute in magic:deep_prism run summon minecraft:area_effect_cloud 0 10 0 {Tags:["dp_gen","new"],Duration:1}

#send it on its merry way
execute in magic:deep_prism as @e[type=area_effect_cloud,tag=dp_gen] as @s[tag=new] at @s run function magic:spells/deep_prism/generate_chamber/b

#Mark the player as having had a prism chamber generated for them
tag @s add PERM_dp_gen