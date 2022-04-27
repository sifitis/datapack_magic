scoreboard objectives add reduce_xp dummy

function magic:calc_current_xp

#===Arcane===#

#Prestidigitation
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Prestidigitation"}}]}] at @s if score @s __xp >= cPREST config_magic if score bPREST config_magic matches 1.. run function magic:spells/prestidigitation
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Prestidigitation"}}]}] at @s unless score @s __xp >= cPREST config_magic run function magic:spells/fail/prestidigitation_fail
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Prestidigitation"}}]}] at @s if score bPREST config_magic matches ..0 run function magic:spells/fail/prestidigitation_fail

#===Abjuration===#
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Dispel"}}]}] at @s if score @s __xp >= cDISPEL config_magic if score bDISPEL config_magic matches 1.. run function magic:spells/dispel
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Dispel"}}]}] at @s unless score @s __xp >= cDISPEL config_magic run function magic:spells/fail/dispel_fail
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Dispel"}}]}] at @s if score bDISPEL config_magic matches ..0 run function magic:spells/fail/dispel_fail


#===Pyromancy===#
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Fireball"}}]}] at @s if score @s __xp >= cFIREBALL config_magic if score bFIREBALL config_magic matches 1.. run function magic:spells/fireball
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Fireball"}}]}] at @s unless score @s __xp >= cFIREBALL config_magic run function magic:spells/fail/fireball_fail
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Fireball"}}]}] at @s if score bFIREBALL config_magic matches ..0 run function magic:spells/fail/fireball_fail

execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Smelt"}}]}] at @s if score @s __xp >= cSMELT config_magic if score bSMELT config_magic matches 1.. unless entity @s[tag=smelt] run function magic:spells/smelt
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Smelt"}}]}] at @s unless score @s __xp >= cSMELT config_magic run function magic:spells/fail/smelt_fail
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Smelt"}}]}] at @s if score bSMELT config_magic matches ..0 run function magic:spells/fail/smelt_fail
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Smelt"}}]}] at @s if entity @s[tag=smelt] run function magic:spells/fail/smelt_fail

#===Geomancy===#


#===Purification===#
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Restore"}}]}] at @s if score @s __xp >= cRESTORE config_magic if score bRESTORE config_magic matches 1.. run function magic:spells/restore
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Restore"}}]}] at @s unless score @s __xp >= cRESTORE config_magic run function magic:spells/fail/restore_fail
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Restore"}}]}] at @s if score bRESTORE config_magic matches ..0 run function magic:spells/fail/restore_fail

execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Sunny Day"}}]}] at @s if score @s __xp >= cSUNNY_DAY config_magic if score bSUNNY_DAY config_magic matches 1.. run function magic:spells/sunny_day
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Sunny Day"}}]}] at @s unless score @s __xp >= cSUNNY_DAY config_magic run function magic:spells/fail/sunny_day_fail
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Sunny Day"}}]}] at @s if score bSUNNY_DAY config_magic matches ..0 run function magic:spells/fail/sunny_day_fail

execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Luminance"}}]}] at @s if score @s __xp >= cLUMINANCE config_magic if score bLUMINANCE config_magic matches 1.. run function magic:spells/luminance
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Luminance"}}]}] at @s unless score @s __xp >= cLUMINANCE config_magic run function magic:spells/fail/luminance_fail
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Luminance"}}]}] at @s if score bLUMINANCE config_magic matches ..0 run function magic:spells/fail/luminance_fail

#===Hydromancy===#

#Rain
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Rain"}}]}] at @s if score @s __xp >= cRAIN config_magic if score bRAIN config_magic matches 1.. run function magic:spells/rain
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Rain"}}]}] at @s unless score @s __xp >= cRAIN config_magic run function magic:spells/fail/rain_fail
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Rain"}}]}] at @s if score bRAIN config_magic matches ..0 run function magic:spells/fail/rain_fail

#Geyser
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Geyser"}}]}] at @s if score @s __xp >= cGEYSER config_magic if score bGEYSER config_magic matches 1.. run function magic:spells/geyser
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Geyser"}}]}] at @s unless score @s __xp >= cGEYSER config_magic run function magic:spells/fail/geyser_fail
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Geyser"}}]}] at @s if score bGEYSER config_magic matches ..0 run function magic:spells/fail/geyser_fail

#Mermaid's Blessing
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Mermaids Blessing"}}]}] at @s if score @s __xp >= cMM_BLESSING config_magic if score bMM_BLESSING config_magic matches 1.. unless entity @s[tag=mm_blessing] run function magic:spells/mm_blessing
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Mermaids Blessing"}}]}] at @s unless score @s __xp >= cMM_BLESSING config_magic run function magic:spells/fail/mm_blessing_fail
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Mermaids Blessing"}}]}] at @s if score bMM_BLESSING config_magic matches ..0 run function magic:spells/fail/mm_blessing_fail
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Mermaids Blessing"}}]}] at @s if entity @s[tag=mm_blessing] if score bMM_BLESSING config_magic matches 1.. run function magic:spells/mm_blessing

#===Aeromancy===#

#Levitate
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Levitate"}}]}] at @s if score @s __xp >= cLEVITATE config_magic if score bLEVITATE config_magic matches 1.. run function magic:spells/levitate
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Levitate"}}]}] at @s unless score @s __xp >= cLEVITATE config_magic run function magic:spells/fail/levitate_fail
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Levitate"}}]}] at @s if score bLEVITATE config_magic matches ..0 run function magic:spells/fail/levitate_fail
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Levitate"}}]}] at @s if entity @s[tag=levitate] if score bLEVITATE config_magic matches 1.. run function magic:spells/levitate

#Silence
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Silence"}}]}] at @s if score @s __xp >= cSILENCE config_magic if score bSILENCE config_magic matches 1.. run function magic:spells/silence
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Silence"}}]}] at @s unless score @s __xp >= cSILENCE config_magic run function magic:spells/fail/silence_fail
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Silence"}}]}] at @s if score bSILENCE config_magic matches ..0 run function magic:spells/fail/silence_fail

#Air Jump
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Jump"}}]}] at @s if score @s __xp >= cJUMP config_magic if score bJUMP config_magic matches 1.. run function magic:spells/jump
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Jump"}}]}] at @s unless score @s __xp >= cJUMP config_magic run function magic:spells/fail/jump_fail
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Jump"}}]}] at @s if score bJUMP config_magic matches ..0 run function magic:spells/fail/jump_fail

#===Ouranomancy===#

#Teleport
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Teleport"}}]}] at @s if score bTELEPORT config_magic matches 1.. run function magic:spells/teleport
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Teleport"}}]}] at @s if score bTELEPORT config_magic matches ..0 run function magic:spells/fail/teleport_fail
#-- This spell requires doing an XP pass/fail check AFTER deciding if it is setting or engaging the teleport because it only charges when doing one or the other depending on the config --#

#Mass Teleport
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Mass Teleport"}}]}] at @s if score bMASS_TP config_magic matches 1.. run function magic:spells/mass_teleport
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Mass Teleport"}}]}] at @s if score bMASS_TP config_magic matches ..0 run function magic:spells/fail/mass_teleport_fail
#-- This spell requires doing an XP pass/fail check AFTER deciding if it is setting or engaging the teleport because it only charges when doing one or the other depending on the config --#

#Gateway
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Gateway"}}]}] at @s if score bGATEWAY config_magic matches 1.. run function magic:spells/gateway
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Gateway"}}]}] at @s if score bGATEWAY config_magic matches ..0 run function magic:spells/fail/gateway_fail
#-- This spell requires doing an XP pass/fail check AFTER deciding if it is setting or unsetting the teleport because it only charges when doing one or the other depending on the config --#

#===Somatics===#

#Vitalize
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Vitalize"}}]}] at @s if score @s __xp >= cVITALIZE config_magic if score bVITALIZE config_magic matches 1.. run function magic:spells/vitalize
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Vitalize"}}]}] at @s unless score @s __xp >= cVITALIZE config_magic run function magic:spells/fail/vitalize_fail
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Vitalize"}}]}] at @s if score bVITALIZE config_magic matches ..0 run function magic:spells/fail/vitalize_fail

#Sorcerer's Feast
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Feast"}}]}] at @s if score @s __xp >= cFEAST config_magic if score bFEAST config_magic matches 1.. run function magic:spells/feast
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Feast"}}]}] at @s unless score @s __xp >= cFEAST config_magic run function magic:spells/fail/feast_fail
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{Spell:"Feast"}}]}] at @s if score bFEAST config_magic matches ..0 run function magic:spells/fail/feast_fail


scoreboard objectives remove reduce_xp