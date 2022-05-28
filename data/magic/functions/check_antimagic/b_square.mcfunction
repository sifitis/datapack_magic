

#in this context, the coordinates are now acting as the positional deltas, not absolute coords.

#abs() of deltas
execute if score .X check_am matches ..-1 run scoreboard players operation .X check_am *= CONST_-1 m_constants
execute if score .Y check_am matches ..-1 run scoreboard players operation .Y check_am *= CONST_-1 m_constants
execute if score .Z check_am matches ..-1 run scoreboard players operation .Z check_am *= CONST_-1 m_constants

#test if player is inside square radius
execute if score .X check_am <= .R check_am if score .Y check_am <= .R check_am if score .Z check_am <= .R check_am run scoreboard players set am_applied check_am 1
