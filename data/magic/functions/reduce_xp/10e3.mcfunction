
xp add @s -1000
scoreboard players remove XP_DELTA reduce_xp 1000
execute if score XP_DELTA reduce_xp matches 1000.. run function magic:reduce_xp/10e3
