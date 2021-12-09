
## -- Executed as the marker from part a -- ##

execute store result entity @s Pos[0] double 1.0 run scoreboard players get X deep_prism
data modify entity @s Pos[1] set value 1d
execute store result entity @s Pos[2] double 1.0 run scoreboard players get Z deep_prism

#Collect exit data because the scoreboard can technically be destroyed.
#execute store result entity @s data.Exit.X double 0.1 run scoreboard players get user_X deep_prism
#execute store result entity @s data.Exit.Y double 0.1 run scoreboard players get user_Y deep_prism
#execute store result entity @s data.Exit.Z double 0.1 run scoreboard players get user_Z deep_prism
#execute store result entity @s data.Exit.W double 1.0 run scoreboard players get user_W deep_prism

#Anything that walks is allowed in.
execute in minecraft:overworld at @a[tag=dp_caster] run tp @e[distance=..2,type=#magic:living_plus] @s
execute in minecraft:the_nether at @a[tag=dp_caster] run tp @e[distance=..2,type=#magic:living_plus] @s
execute in minecraft:the_end at @a[tag=dp_caster] run tp @e[distance=..2,type=#magic:living_plus] @s

execute positioned as @s positioned ~-15 ~-1 ~-15 as @e[distance=..10] as @e[tag=prism_anchor,limit=1,type=marker] at @s run function magic:spells/deep_prism/goto_chamber/c

execute positioned as @s run forceload remove ~-1 ~-1
kill @s