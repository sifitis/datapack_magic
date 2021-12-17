scoreboard objectives add gateway dummy

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{GateStatus:0}}]}] run function magic:spells/gateway/set
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{GateStatus:1}}]}] run function magic:spells/gateway/engage/test_cost
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{GateStatus:2}}]}] run function magic:spells/gateway/unset

#scoreboard objectives remove gateway