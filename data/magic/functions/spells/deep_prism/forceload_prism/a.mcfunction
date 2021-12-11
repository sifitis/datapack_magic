
## -- Executed as the player -- ##

#create executor for part b
execute in magic:deep_prism run summon minecraft:marker 0 10 0 {Tags:["dp_preload"]}

#forward once more unto the breach!
execute in magic:deep_prism as @e[type=marker,tag=dp_preload] at @s run function magic:spells/deep_prism/forceload_prism/b