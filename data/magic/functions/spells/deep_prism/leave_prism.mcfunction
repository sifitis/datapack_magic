
function magic:sound_effects/use_scroll

playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 0
particle minecraft:crit ~ ~ ~ 1 1 1 2 500 force
function magic:visual_effects/witch_triangle_large

function magic:spells/deep_prism/leave_prism/a

#post exit effects
tag @s add exit_prism_fx
schedule function magic:spells/deep_prism/leave_prism/post_effects 1t

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/deep_prism