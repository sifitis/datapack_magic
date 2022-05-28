
function magic:sound_effects/use_scroll

scoreboard objectives add mm_blessing dummy

scoreboard players set MMB_ACTIVE mm_blessing 0
execute if score @s cd_mm_blessing matches 1.. run scoreboard players set MMB_ACTIVE mm_blessing 1

execute if score MMB_ACTIVE mm_blessing matches 0 run function magic:spells/mm_blessing/give
execute if score MMB_ACTIVE mm_blessing matches 1 run function magic:spells/mm_blessing/take

scoreboard objectives remove mm_blessing

#---Book Item Return---#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/mm_blessing