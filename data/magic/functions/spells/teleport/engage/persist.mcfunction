
## -- This is a persistant function that operates as long as the spell is active -- #

execute if score @s cd_tp_engage matches 1 run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 1 0.2 0.05 300
execute if score @s cd_tp_engage matches 1 run particle minecraft:firework ~ ~ ~ 1 1 1 0 100


execute if score @s cd_tp_engage matches 1.. run scoreboard players remove @s cd_tp_engage 1
execute if score @s cd_tp_engage matches ..0 run tag @s remove teleport_engage
execute if score @s cd_tp_engage matches ..0 run tag @s remove persistant