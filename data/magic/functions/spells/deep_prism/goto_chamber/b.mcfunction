
## -- Executed as the area_effect_cloud from part a -- ##

execute store result entity @s Pos[0] double 1.0 run scoreboard players get X deep_prism
data modify entity @s Pos[1] set value 1d
execute store result entity @s Pos[2] double 1.0 run scoreboard players get Z deep_prism

#Anything that walks is allowed in.
execute in minecraft:overworld at @a[tag=dp_caster] run tp @e[distance=..2,type=#magic:living_plus] @s
execute in minecraft:the_nether at @a[tag=dp_caster] run tp @e[distance=..2,type=#magic:living_plus] @s
execute in minecraft:the_end at @a[tag=dp_caster] run tp @e[distance=..2,type=#magic:living_plus] @s
kill @s