function magic:sound_effects/use_scroll

scoreboard objectives add teleport dummy

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{TeleportSet:0b}}]}] run function magic:spells/teleport/set
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{TeleportSet:1b}}]}] run function magic:spells/teleport/engage

scoreboard objectives remove teleport