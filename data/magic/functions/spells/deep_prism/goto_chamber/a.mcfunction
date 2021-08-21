
## -- Executed as the player -- ##

tag @s add dp_caster

#create executor for part b
execute as @e[type=area_effect_cloud,tag=new] run kill @s
execute in magic:deep_prism run summon minecraft:area_effect_cloud 0 10 0 {Tags:["dp_goto","new"],Duration:1}

#off you go, champ.
execute in magic:deep_prism as @e[type=area_effect_cloud,tag=dp_goto] as @s[tag=new] at @s run function magic:spells/deep_prism/goto_chamber/b

tag @s remove dp_caster