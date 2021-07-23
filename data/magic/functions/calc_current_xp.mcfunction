
scoreboard objectives add calc_current_xp dummy

execute store result score LEVELS calc_current_xp run xp query @s levels
execute store result score POINTS calc_current_xp run xp query @s points

execute if score LEVELS calc_current_xp matches ..16 run function magic:calc_current_xp/0_16
execute if score LEVELS calc_current_xp matches 17..31 run function magic:calc_current_xp/17_31
execute if score LEVELS calc_current_xp matches 32.. run function magic:calc_current_xp/32_

scoreboard players operation @s __xp = TOTAL calc_current_xp

scoreboard objectives remove calc_current_xp