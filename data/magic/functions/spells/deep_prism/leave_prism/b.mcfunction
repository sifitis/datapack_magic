
## -- Executed as the marker from part a -- ##

execute store result entity @s Pos[0] double 0.1 run scoreboard players get exit_X deep_prism
execute store result entity @s Pos[1] double 0.1 run scoreboard players get exit_Y deep_prism
execute store result entity @s Pos[2] double 0.1 run scoreboard players get exit_Z deep_prism

#Anything that walks is allowed out.
execute in magic:deep_prism at @a[tag=dp_caster] run tp @e[distance=..2,type=#magic:living_plus] @s
kill @s