
# Run from caster

#maximum square radius in prism tiles (7 chunks) that a prism chamber can generate
#Note: PRISM_RAD is the number of prism "cells" that can exist per axis.
scoreboard players set PRISM_RAD deep_prism 535697

scoreboard players operation PRISM_RAD2 deep_prism = PRISM_RAD deep_prism
scoreboard players operation PRISM_RAD2 deep_prism /= CONST_2 m_constants
scoreboard players add PRISM_RAD2 deep_prism 1

#Acquire UUID for determing chamber coords
execute store result score X deep_prism run data get entity @s UUID[0] 0.0625
execute store result score Z deep_prism run data get entity @s UUID[1] 0.0625

#Jiggle the numbers a bit to get the prism field centered and scaled correctly
scoreboard players operation X deep_prism %= PRISM_RAD deep_prism
scoreboard players operation Z deep_prism %= PRISM_RAD deep_prism

scoreboard players operation X deep_prism -= PRISM_RAD2 deep_prism
scoreboard players operation Z deep_prism -= PRISM_RAD2 deep_prism

#convert back up to actual block coords
scoreboard players operation X deep_prism *= CONST_7 m_constants
scoreboard players operation Z deep_prism *= CONST_7 m_constants

scoreboard players operation X deep_prism *= CONST_16 m_constants
scoreboard players operation Z deep_prism *= CONST_16 m_constants