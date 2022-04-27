
#Run from caster

scoreboard objectives add check_am dummy
scoreboard players set am_applied check_am 0
data modify storage magic:virtual_objects antimagic_zones_temp set from storage magic:virtual_objects antimagic_zones
execute store result score .i check_am run data get storage magic:virtual_objects antimagic_zones_test

function magic:check_antimagic/a

#if am_applied == true, fail the spell
execute if score am_applied check_am matches 1 run function magic:select_spell
execute if score am_applied check_am matches 1 run tellraw @s {"text":"In AMZ!"}

#if am_applied == false, do select_spell
execute if score am_applied check_am matches 0 run function magic:select_spell

data remove storage magic:virtual_objects antimagic_zones_temp

scoreboard objectives remove check_am