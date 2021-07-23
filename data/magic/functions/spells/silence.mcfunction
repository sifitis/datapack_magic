function magic:sound_effects/use_scroll

tag @s add silence_caster

execute as @e[type=#magic:mob,distance=..3,limit=1,sort=nearest] run tag @s add silence_target

execute unless entity @e[type=#magic:mob,distance=..3] run title @s actionbar {"text":"There are no mobs nearby.","color":"white"}


execute as @e[tag=silence_target,distance=..3] as @s[tag=!magic_silence] at @s run function magic:spells/silence/mute
execute as @e[tag=silence_target,distance=..3] as @s[tag=magic_silence] at @s run function magic:spells/silence/unmute
execute as @e[tag=silence_target,distance=..3] run tag @s remove silence_target

tag @s remove silence_caster

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/silence