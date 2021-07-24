

scoreboard objectives add teleport dummy

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{TeleportSet:0b}}]}] if score bTP_COST_ON_SET config_magic matches ..0 run function magic:spells/teleport/set
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{TeleportSet:0b}}]}] if score bTP_COST_ON_SET config_magic matches 1.. run function magic:spells/teleport/set/test_cost

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{TeleportSet:1b}}]}] if score bTP_COST_ON_SET config_magic matches ..0 run function magic:spells/teleport/engage/test_cost
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{TeleportSet:1b}}]}] if score bTP_COST_ON_SET config_magic matches 1.. run function magic:spells/teleport/engage

scoreboard objectives remove teleport