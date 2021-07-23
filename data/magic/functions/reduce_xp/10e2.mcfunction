
xp add @s -100
scoreboard players remove XP_DELTA reduce_xp 100
execute if score XP_DELTA reduce_xp matches 100.. run function magic:reduce_xp/10e2
