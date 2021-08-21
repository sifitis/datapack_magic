
#This function watches all the little naughties and sees when they leave their little boxes...
scoreboard objectives add prism_escaped dummy
scoreboard objectives add prism_escape_lvl dummy

scoreboard players set @a prism_escaped 0
execute as @a[predicate=predicate_lib:dimension/in_deep_prism] at @s positioned ~-31.5 ~-31.5 ~-31.5 unless entity @e[type=marker,tag=prism_anchor,dx=31,dy=31,dz=31] run scoreboard players set @s prism_escaped 1

execute as @a at @s if score @s prism_escaped matches 1 run function magic:spells/deep_prism/prism_warden/b
execute as @a at @s if score @s prism_escaped matches 0 if score @s prism_escape_lvl matches 1.. run scoreboard players remove @s prism_escape_lvl 1
schedule function magic:spells/deep_prism/prism_warden/a 5s