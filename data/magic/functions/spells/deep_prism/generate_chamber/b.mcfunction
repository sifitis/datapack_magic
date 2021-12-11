
## -- Executed as the area_effect_cloud from part a -- ##

execute store result entity @s Pos[0] double 1.0 run scoreboard players get X deep_prism
execute store result entity @s Pos[1] double 0.5 run scoreboard players get CONST_1 m_constants
execute store result entity @s Pos[2] double 1.0 run scoreboard players get Z deep_prism

#Unless the following line is run EXACTLY as layed out, part c will run from the wrong location.  This took 4 hours of trial and error.
execute positioned as @s run function magic:spells/deep_prism/generate_chamber/c
kill @s