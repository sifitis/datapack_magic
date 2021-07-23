
## -- This is a persistant function that operates as long as a geyser is still alive -- #

particle minecraft:block minecraft:water ~ ~1.5 ~ 0.2 1.2 0.2 10 70 force
particle minecraft:cloud ~ ~ ~ 0.8 0.2 0.8 0.01 30 force
particle minecraft:cloud ~ ~0.5 ~ 0.2 1 0.2 0.01 3 force
particle minecraft:block minecraft:water ~ ~3 ~ 0.6 0.6 0.6 10 50 force

execute if score @s cd_geyser matches 1.. run scoreboard players remove @s cd_geyser 1
execute if score @s cd_geyser matches 0 run kill @s