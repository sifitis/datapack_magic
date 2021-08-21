
#Oh boy, this one was a doozy to make work... good luck understanding it, future me.

function magic:sound_effects/use_scroll

#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cDPRISM config_magic
function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

playsound minecraft:entity.ghast.shoot master @s ~ ~ ~ 1 0.7

#scoreboard objectives remove deep_prism
scoreboard objectives add deep_prism dummy

#maximum square radius in prism tiles (7 chunks) that a prism chamber can generate
scoreboard players set PRISM_RAD deep_prism 535697

scoreboard players operation PRISM_RAD2 deep_prism = PRISM_RAD deep_prism
scoreboard players operation PRISM_RAD2 deep_prism /= CONST_2 m_constants
scoreboard players add PRISM_RAD2 deep_prism 1

#Acquire UUID for determing chamber coords
execute store result score X deep_prism run data get entity @s UUID[0] 0.0625
execute store result score Z deep_prism run data get entity @s UUID[1] 0.0625

#Jiggle the numbers a bit to get it centered and scaled correctly
scoreboard players operation X deep_prism %= PRISM_RAD deep_prism
scoreboard players operation Z deep_prism %= PRISM_RAD deep_prism

scoreboard players operation X deep_prism -= PRISM_RAD2 deep_prism
scoreboard players operation Z deep_prism -= PRISM_RAD2 deep_prism

#convert back up to actual block coords
scoreboard players operation X deep_prism *= CONST_7 m_constants
scoreboard players operation Z deep_prism *= CONST_7 m_constants

scoreboard players operation X deep_prism *= CONST_16 m_constants
scoreboard players operation Z deep_prism *= CONST_16 m_constants

#generate the chamber if player doesn't already have one
execute as @s[tag=!PERM_dp_gen] run function magic:spells/deep_prism/generate_chamber/a

#Add a little to the coords so you don't teleport to the corner of the chamber
scoreboard players add X deep_prism 16
scoreboard players add Z deep_prism 16

#send player to chamber
function magic:spells/deep_prism/goto_chamber/a

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/deep_prism