
## -- This is a persistant function that operates as long as the spell is active -- #

execute if entity @s[tag=farting] run particle minecraft:dust 0.45 0.5 0.15 5 ~ ~0.5 ~ 0.1 0 0.1 0 10 force
execute unless entity @s[tag=farting] run particle minecraft:dust 0.8 0.8 0.8 5 ~ ~0.5 ~ 0.1 0 0.1 0 10 force

#particle minecraft:cloud ~ ~ ~ 0 -1 0 1 0 force

execute if score @s cd_levitate matches 1.. run scoreboard players remove @s cd_levitate 1
execute if score @s cd_levitate matches ..0 run tag @s remove levitate
execute if score @s cd_levitate matches ..0 run scoreboard players remove @s persistance 1