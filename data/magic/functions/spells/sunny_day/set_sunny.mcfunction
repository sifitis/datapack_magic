
#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cSUNNY_DAY config_magic
function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

#execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 0.2 1.5
execute as @a at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 0
particle minecraft:end_rod ~ ~50 ~ .2 30 .2 0 2000 force
particle minecraft:end_rod ~ ~50 ~ 1.3 30 1.3 0 2000 force


weather clear 900
title @a actionbar {"text":"A crisp bright magic clears the sky.","color":"yellow"}