
xp add @s -10000
scoreboard players remove XP_DELTA reduce_xp 10000
execute if score XP_DELTA reduce_xp matches 10000.. run function magic:reduce_xp/10e4
