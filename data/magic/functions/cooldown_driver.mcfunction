
###                        VVVV CHANGE HERE                              AND HERE VVVV

#Prestidigitation
execute as @a if score @s cd_prest matches 1.. run scoreboard players remove @s cd_prest 1

#Fireball
execute as @a if score @s cd_fireball matches 1.. run scoreboard players remove @s cd_fireball 1

#Alchemy
execute as @a if score @s cd_alchemy matches 1.. run scoreboard players remove @s cd_alchemy 1

#Restore
execute as @a if score @s cd_restore matches 1.. run scoreboard players remove @s cd_restore 1

#Rain
execute as @a if score @s cd_rain matches 1.. run scoreboard players remove @s cd_rain 1

#Geyser
execute as @a if score @s cd_geyser matches 1.. run scoreboard players remove @s cd_geyser 1
execute as @a at @s if score @s cd_geyser matches ..-1 run function magic:spells/geyser/loop

#Deep Prism
execute as @a if score @s cd_dprism matches 1.. run scoreboard players remove @s cd_cdprism 1