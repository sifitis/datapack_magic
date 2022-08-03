
function magic:calc_current_xp

execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Prestidigitation"}}] run scoreboard players operation COST magic_temp = cPREST config_magic

execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Dispel"}}] run scoreboard players operation COST magic_temp = cDISPEL config_magic

execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Fireball"}}] run scoreboard players operation COST magic_temp = cFIREBALL config_magic
execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Smelt"}}] run scoreboard players operation COST magic_temp = cSMELT config_magic
execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Salamanders Safeguard"}}] run scoreboard players operation COST magic_temp = cSALAMANDER config_magic

execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Restore"}}] run scoreboard players operation COST magic_temp = cRESTORE config_magic
execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Sunny Day"}}] run scoreboard players operation COST magic_temp = cSUNNY_DAY config_magic
execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Luminance"}}] run scoreboard players operation COST magic_temp = cLUMINANCE config_magic

execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Rain"}}] run scoreboard players operation COST magic_temp = cRAIN config_magic
execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Geyser"}}] run scoreboard players operation COST magic_temp = cGEYSER config_magic
execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Mermaids Blessing"}}] run scoreboard players operation COST magic_temp = cMM_BLESSING config_magic

execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Levitate"}}] run scoreboard players operation COST magic_temp = cLEVITATE config_magic
execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Silence"}}] run scoreboard players operation COST magic_temp = cSILENCE config_magic
execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Jump"}}] run scoreboard players operation COST magic_temp = cJUMP config_magic

execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Teleport"}}] run scoreboard players operation COST magic_temp = cTELEPORT config_magic
execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Mass Teleport"}}] run scoreboard players operation COST magic_temp = cMASS_TP config_magic
execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Gateway"}}] run scoreboard players operation COST magic_temp = cGATEWAY config_magic

execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Vitalize"}}] run scoreboard players operation COST magic_temp = cVITALIZE config_magic
execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Feast"}}] run scoreboard players operation COST magic_temp = cFEAST config_magic

execute if score COST magic_temp <= @s __xp run title @s actionbar [{"text":"Total XP: ","color":"#99FF44"},{"score":{"name":"@s","objective":"__xp"}},{"text":"  Cost: "},{"score":{"name":"COST","objective":"magic_temp"}}]
execute if score COST magic_temp > @s __xp run title @s actionbar [{"text":"Total XP: ","color":"red"},{"score":{"name":"@s","objective":"__xp"}},{"text":"  Cost: "},{"score":{"name":"COST","objective":"magic_temp"}}]

#unique to luminance
execute if data storage magic:temp SelectedItemSlotData[{tag:{Spell:"Luminance"}}] if score COST magic_temp <= @s __xp run title @s actionbar [{"text":"Total XP: ","color":"#99FF44"},{"score":{"name":"@s","objective":"__xp"}},{"text":"  Cost: "},{"score":{"name":"COST","objective":"magic_temp"}},{"text":"  Luminance level: ","color":"yellow"},{"score":{"name":"@s","objective":"lum_lvl"},"color":"yellow"}]
