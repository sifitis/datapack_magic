
## -- This is a persistant function that operates as long as the spell is active -- #

particle minecraft:block minecraft:magma_block ~ ~.25 ~ 0.3 0.5 0.3 0 3 force
particle minecraft:flame ~ ~.25 ~ 0.3 0.5 0.3 0.1 1 force

execute if score @s cd_salamander matches 1.. run scoreboard players remove @s cd_salamander 1
execute if score @s cd_salamander matches ..0 run tag @s remove mm_blessing
execute if score @s cd_salamander matches ..0 run scoreboard players remove @s persistance 1