function magic:sound_effects/use_scroll

#-------------------------------------COST CONTROL--------------------------------------------#
scoreboard players operation XP_DELTA reduce_xp = cPREST config_magic
function magic:reduce_xp
#---------------------------------------------------------------------------------------------#
scoreboard objectives add prestidigitation dummy
function math:random
scoreboard players operation N prestidigitation = X m_random
scoreboard players operation N prestidigitation %= CONST_20 m_constants

execute if score N prestidigitation matches 0 at @s anchored eyes run playsound minecraft:entity.zombie.ambient master @a ~ ~ ~ 1 1
execute if score N prestidigitation matches 1 at @s anchored eyes run playsound minecraft:entity.donkey.angry master @a ~ ~ ~ 0.6 1
execute if score N prestidigitation matches 2 at @s anchored eyes run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 1
execute if score N prestidigitation matches 3 at @s anchored eyes run playsound minecraft:block.dispenser.launch master @a ~ ~ ~ 1 0
execute if score N prestidigitation matches 4 at @s anchored eyes run playsound minecraft:entity.pig.hurt master @a ~ ~ ~ 1 1

execute if score N prestidigitation matches 5 at @s anchored eyes run playsound minecraft:entity.cat.death master @a ~ ~ ~ 1 1
execute if score N prestidigitation matches 6 at @s anchored eyes run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1 1
execute if score N prestidigitation matches 7 at @s anchored eyes run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0
execute if score N prestidigitation matches 8 at @s anchored eyes run playsound minecraft:entity.wolf.howl master @a ~ ~ ~ 0.2 1
execute if score N prestidigitation matches 9 at @s anchored eyes run playsound minecraft:entity.villager.ambient master @a ~ ~ ~ 1 1

execute if score N prestidigitation matches 10 at @s anchored eyes run particle minecraft:firework ~ ~1 ~ 0 0 0 0.3 100 force
execute if score N prestidigitation matches 11 at @s anchored eyes run particle minecraft:witch ~ ~ ~ 0 0 0 0.3 100 force
execute if score N prestidigitation matches 12 at @s anchored eyes run particle minecraft:happy_villager ~ ~1.5 ~ 1 1 1 0.3 100 force
execute if score N prestidigitation matches 13 at @s anchored eyes run particle minecraft:angry_villager ~ ~1.5 ~ 1 1 1 0.3 50 force
execute if score N prestidigitation matches 14 at @s anchored eyes run particle minecraft:fishing ~ ~0.2 ~ 1 0 1 0 300 force

execute if score N prestidigitation matches 15 at @s anchored eyes run particle minecraft:crit ~ ~1 ~ 0.2 1 0.2 0 300 force
execute if score N prestidigitation matches 16 at @s anchored eyes run particle minecraft:damage_indicator ~ ~1 ~ 1 1 1 0 70 force
execute if score N prestidigitation matches 17 at @s anchored eyes run particle minecraft:heart ~ ~1 ~ 1 1 1 0 40 force
execute if score N prestidigitation matches 18 at @s anchored eyes run particle minecraft:enchanted_hit ~ ~1 ~ 1 1 1 0 130 force
execute if score N prestidigitation matches 19 at @s anchored eyes run particle minecraft:squid_ink ~ ~1 ~ 1 1 1 0.1 130 force

scoreboard objectives remove prestidigitation

#---------------------------------------------------------------------------------------------#
# EVERYTHING BELOW THIS LINE IS FOR RETURNING THE SCROLL ITEMS AFTER YOU USE ONE
#---------------------------------------------------------------------------------------------#

item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/prestidigitation