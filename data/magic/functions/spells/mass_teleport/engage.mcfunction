function magic:sound_effects/use_scroll

#-------------------------------------COST CONTROL--------------------------------------------#
execute if score bMTP_COST_ON_SET config_magic matches ..0 run scoreboard players operation XP_DELTA reduce_xp = cMASS_TP config_magic
execute if score bMTP_COST_ON_SET config_magic matches ..0 run function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

 # particle minecraft:soul_fire_flame ~ ~ ~ 0.2 1 0.2 0.05 300
 # particle minecraft:firework ~ ~ ~ 1 1 1 0 100
 # particle minecraft:firework ~ ~ ~ 0 1 0 1 100
 
tag @s add teleport_caster

summon minecraft:marker ~ ~ ~ {Tags:["persistant","mass_tp_entry","new", "sifMagic"]}

scoreboard objectives add cd_mtp_engage dummy

execute as @e[distance=..1,limit=1,type=marker,tag=mass_tp_entry] as @s[tag=new] run function magic:spells/mass_teleport/prepare_marker

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/mass_teleport
tag @s remove teleport_caster