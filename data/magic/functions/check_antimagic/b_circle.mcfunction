

#in this context, the coordinates are now acting as the positional deltas, not absolute coords.

#abs() of deltas
execute if score .X check_am matches ..-1 run scoreboard players operation .X check_am *= CONST_-1 m_constants
execute if score .Y check_am matches ..-1 run scoreboard players operation .Y check_am *= CONST_-1 m_constants
execute if score .Z check_am matches ..-1 run scoreboard players operation .Z check_am *= CONST_-1 m_constants

#test if player is inside square radius
scoreboard players set in_square check_am 0
execute if score .X check_am <= .R check_am if score .Y check_am <= .R check_am if score .Z check_am <= .R check_am run scoreboard players set in_square check_am 1

#test if player is inside circle radius (R^2 >= X^2 + Y^2 + Z^2)

#square all values
scoreboard players operation .X check_am *= .X check_am
scoreboard players operation .Y check_am *= .Y check_am
scoreboard players operation .Z check_am *= .Z check_am
scoreboard players operation .R check_am *= .R check_am

#dump all coords into X
scoreboard players operation .X check_am += .Y check_am
scoreboard players operation .X check_am += .Z check_am

execute if score in_square check_am matches 1 if score .X check_am <= .R check_am run scoreboard players set am_applied check_am 1
