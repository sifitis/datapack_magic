
xp add @s -1
scoreboard players remove XP_DELTA reduce_xp 1
execute if score XP_DELTA reduce_xp matches 1.. run function magic:reduce_xp/10e0
