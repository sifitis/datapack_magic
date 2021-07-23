
#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cSILENCE config_magic
execute as @a[tag=silence_caster,limit=1,sort=nearest] run function magic:reduce_xp
#---------------------------------------------------------------------------------------------#

execute as @s anchored eyes positioned ^ ^ ^ run particle minecraft:dust_color_transition 1 1 1 1 1 0 0 ~ ~ ~ 0.2 0.2 0.2 0 50 force
execute as @s anchored eyes positioned ^ ^ ^ run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.5 0.5 0.5 0 25 force
playsound minecraft:entity.phantom.flap master @a[distance=..5] ~ ~ ~ 5 1 1
data merge entity @s {Silent:1b}
tag @s add magic_silence
tag @s remove silence_target