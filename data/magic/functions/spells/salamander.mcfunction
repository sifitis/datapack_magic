
function magic:sound_effects/use_scroll

scoreboard objectives add salamander dummy

scoreboard players set SAL_ACTIVE salamander 0
execute if score @s cd_salamander matches 1.. run scoreboard players set SAL_ACTIVE salamander 1

execute if score SAL_ACTIVE salamander matches 0 run function magic:spells/salamander/give
execute if score SAL_ACTIVE salamander matches 1 run function magic:spells/salamander/take

scoreboard objectives remove salamander

#---Book Item Return---#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/salamander