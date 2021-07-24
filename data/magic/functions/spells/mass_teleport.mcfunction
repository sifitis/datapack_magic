
scoreboard objectives add mass_tp dummy

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{TeleportSet:0b}}]}] if score bMTP_COST_ON_SET config_magic matches ..0 run function magic:spells/mass_teleport/set
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{TeleportSet:0b}}]}] if score bMTP_COST_ON_SET config_magic matches 1.. run function magic:spells/mass_teleport/set/test_cost

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{TeleportSet:1b}}]}] if score bMTP_COST_ON_SET config_magic matches ..0 run function magic:spells/mass_teleport/engage/test_cost
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{TeleportSet:1b}}]}] if score bMTP_COST_ON_SET config_magic matches 1.. run function magic:spells/mass_teleport/engage

scoreboard objectives remove mass_tp