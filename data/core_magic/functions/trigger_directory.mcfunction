
#Selects proper page or function based on trigger index

execute if score @s tomes matches 1 run function core_magic:splash
execute if score @s tomes matches 2 run function help:help_main
execute if score @s tomes matches 3 run function help:about



scoreboard players set @s tomes 0