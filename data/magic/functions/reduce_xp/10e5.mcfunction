
xp add @s -100000
scoreboard players remove XP_DELTA reduce_xp 100000
execute if score XP_DELTA reduce_xp matches 100000.. run function magic:reduce_xp/10e5
