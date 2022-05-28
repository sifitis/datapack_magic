
# This function gives the caster a tome with relevant settings when a new gateway is opened

# Create new Tome item
loot spawn ~ ~1 ~ loot magic:tome_gateway
tag @e[type=item,distance=..1,limit=1,nbt={Age:0s}] add teleport_book
execute as @e[distance=..1,tag=teleport_book] run data modify entity @s PickupDelay set value 0s

# Populate Status and ID info
execute as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.GateStatus set value 2
execute as @e[distance=..1,tag=teleport_book] store result entity @s Item.tag.GateID int 1 run scoreboard players get gateID gateway

# Dimension of gateway entrance
execute if predicate predicate_lib:dimension/in_overworld as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.TeleportData.Dim set value 0
execute if predicate predicate_lib:dimension/in_nether as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.TeleportData.Dim set value 1
execute if predicate predicate_lib:dimension/in_end as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.TeleportData.Dim set value 2

# Position of gateway entrance
execute as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.TeleportData.EntryPos set from entity @e[distance=..1,tag=teleport_caster,limit=1] Pos

# Lore text
execute as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.display.Lore append value '{"text":"§3[Use near open gateway to close]§r"}'
execute as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.display.Lore prepend value '{"text":"§3Gateway Open§r"}'