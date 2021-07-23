
xp add @s -10
scoreboard players remove XP_DELTA reduce_xp 10
execute if score XP_DELTA reduce_xp matches 10.. run function magic:reduce_xp/10e1
