function magic:sound_effects/use_scroll

scoreboard objectives add sunny_day dummy

scoreboard players set TIME_FLAG sunny_day 0
scoreboard players set WEATHER_FLAG sunny_day 0

execute store result score TIME sunny_day run time query daytime
execute if score TIME sunny_day matches 0..12000 run scoreboard players set TIME_FLAG sunny_day 1

#--if the config is set not to require daytime, this flag will always pass--#
execute if score bSD_NEEDS_SUN config_magic matches ..0 run scoreboard players set TIME_FLAG sunny_day 1

execute if predicate predicate_lib:weather/is_raining run scoreboard players set WEATHER_FLAG sunny_day 1

execute if score WEATHER_FLAG sunny_day matches 1.. if score TIME_FLAG sunny_day matches 1.. run function magic:spells/sunny_day/set_sunny

execute if score WEATHER_FLAG sunny_day matches ..0 run title @s actionbar {"text":"The sky is already clear.","color":"yellow"}
execute if score TIME_FLAG sunny_day matches ..0 run title @s actionbar {"text":"The Sun is too low for this spell.","color":"yellow"}
scoreboard objectives remove sunny_day

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/sunny_day