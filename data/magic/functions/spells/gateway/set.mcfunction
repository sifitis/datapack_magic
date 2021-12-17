function magic:sound_effects/use_scroll

# The cost on this is handled by the engage section in that it charges when you place the circle #

tag @s add teleport_setter
function magic:spells/gateway/set/populate_teleport_data
tellraw @s [{"text":"Gateway coordinates set. [","color":"dark_aqua"},{"score":{"name":"Xpos","objective":"gateway"}},{"text":", "},{"score":{"name":"Ypos","objective":"gateway"}},{"text":", "},{"score":{"name":"Zpos","objective":"gateway"}},{"text":"]"}]

# -- Effects -- #
function magic:visual_effects/soulflame_ring_small
function magic:visual_effects/soulflame_ring_med
function magic:visual_effects/soulflame_ring_large

particle minecraft:crit ~ ~ ~ 1 1 1 0.01 25

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
tag @s remove teleport_setter