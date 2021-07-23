function magic:sound_effects/use_scroll

scoreboard objectives add mass_tp dummy

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{TeleportSet:0b}}]}] run function magic:spells/mass_teleport/set
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{TeleportSet:1b}}]}] run function magic:spells/mass_teleport/engage

scoreboard objectives remove mass_tp