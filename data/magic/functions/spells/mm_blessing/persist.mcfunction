
## -- This is a persistant function that operates as long as the spell is active -- #

particle minecraft:block minecraft:water ~ ~ ~ 1 1 1 0 10 force
effect give @s minecraft:dolphins_grace 1 2 true
effect give @s minecraft:water_breathing 1 0 true
effect give @s minecraft:conduit_power 1 0 true


execute if score @s cd_mm_blessing matches 1.. run scoreboard players remove @s cd_mm_blessing 1
execute if score @s cd_mm_blessing matches ..0 run tag @s remove mm_blessing
execute if score @s cd_mm_blessing matches ..0 run scoreboard players remove @s persistance 1