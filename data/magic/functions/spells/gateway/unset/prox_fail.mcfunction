
#Store position data
execute store result score gateX gateway run data get entity @s Inventory[{Slot:-106b}].tag.TeleportData.EntryPos[0]
execute store result score gateY gateway run data get entity @s Inventory[{Slot:-106b}].tag.TeleportData.EntryPos[1]
execute store result score gateZ gateway run data get entity @s Inventory[{Slot:-106b}].tag.TeleportData.EntryPos[2]
execute store result score gateDim gateway run data get entity @s Inventory[{Slot:-106b}].tag.TeleportData.Dim

#fail message
execute if score gateDim gateway matches 0 run tellraw @s [{"text":"You must be near the gateway created by this tome to close it. The gateway is at [","color":"dark_aqua"},{"score":{"name":"gateX","objective":"gateway"}},{"text":", "},{"score":{"name":"gateY","objective":"gateway"}},{"text":", "},{"score":{"name":"gateZ","objective":"gateway"}},{"text":"] in the Overworld."}]
execute if score gateDim gateway matches 1 run tellraw @s [{"text":"You must be near the gateway created by this tome to close it. The gateway is at [","color":"dark_aqua"},{"score":{"name":"gateX","objective":"gateway"}},{"text":", "},{"score":{"name":"gateY","objective":"gateway"}},{"text":", "},{"score":{"name":"gateZ","objective":"gateway"}},{"text":"] in the Nether."}]
execute if score gateDim gateway matches 2 run tellraw @s [{"text":"You must be near the gateway created by this tome to close it. The gateway is at [","color":"dark_aqua"},{"score":{"name":"gateX","objective":"gateway"}},{"text":", "},{"score":{"name":"gateY","objective":"gateway"}},{"text":", "},{"score":{"name":"gateZ","objective":"gateway"}},{"text":"] in the End."}]
execute if score gateDim gateway matches 3 run tellraw @s [{"text":"You must be near the gateway created by this tome to close it. The gateway is at [","color":"dark_aqua"},{"score":{"name":"gateX","objective":"gateway"}},{"text":", "},{"score":{"name":"gateY","objective":"gateway"}},{"text":", "},{"score":{"name":"gateZ","objective":"gateway"}},{"text":"] in Prism Space."}]

function magic:spells/gateway/return_failed_book