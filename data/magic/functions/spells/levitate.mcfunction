function magic:sound_effects/use_scroll

scoreboard objectives add levitate dummy

scoreboard players set LEV_ACTIVE levitate 0
execute if score @s cd_levitate matches 1.. run scoreboard players set LEV_ACTIVE levitate 1

execute if score LEV_ACTIVE levitate matches 0 run function magic:spells/levitate/give
execute if score LEV_ACTIVE levitate matches 1 run function magic:spells/levitate/take

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/levitate