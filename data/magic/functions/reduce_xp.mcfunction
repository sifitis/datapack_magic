
# This function will iteratively decrease the xp of the player #

execute if score XP_DELTA reduce_xp matches 10000000.. run function magic:reduce_xp/10e7
execute if score XP_DELTA reduce_xp matches 1000000.. run function magic:reduce_xp/10e6
execute if score XP_DELTA reduce_xp matches 100000.. run function magic:reduce_xp/10e5
execute if score XP_DELTA reduce_xp matches 10000.. run function magic:reduce_xp/10e4
execute if score XP_DELTA reduce_xp matches 1000.. run function magic:reduce_xp/10e3
execute if score XP_DELTA reduce_xp matches 100.. run function magic:reduce_xp/10e2
execute if score XP_DELTA reduce_xp matches 10.. run function magic:reduce_xp/10e1
execute if score XP_DELTA reduce_xp matches 1.. run function magic:reduce_xp/10e0