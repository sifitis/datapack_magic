
function magic:sound_effects/use_scroll

execute in minecraft:overworld run tp @s 0 10 0

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/deep_prism