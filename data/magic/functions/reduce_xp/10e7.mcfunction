
xp add @s -10000000
scoreboard players remove XP_DELTA reduce_xp 10000000
execute if score XP_DELTA reduce_xp matches 10000000.. run function magic:reduce_xp/10e7
