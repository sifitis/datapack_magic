
## -- Executed as the marker from part a -- ##

say B

execute store result entity @s Pos[0] double 1.0 run scoreboard players get X deep_prism
data modify entity @s Pos[1] set value 1d
execute store result entity @s Pos[2] double 1.0 run scoreboard players get Z deep_prism

execute positioned as @s run forceload add ~ ~

kill @s