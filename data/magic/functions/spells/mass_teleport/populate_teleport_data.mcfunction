
loot spawn ~ ~ ~ loot magic:tome_mass_teleport
tag @e[type=item,distance=..1,limit=1,nbt={Age:0s}] add teleport_book

execute as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.TeleportSet set value 1b
execute as @e[distance=..1,tag=teleport_book] run data modify entity @s PickupDelay set value 0s
$execute as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.TeleportData set value {Pos:[$(X)d,$(Y)d,$(Z)d],Rot:[$(A)d,$(E)d],Dim:0}

execute if predicate predicate_lib:dimension/in_overworld as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.TeleportData.Dim set value 0
execute if predicate predicate_lib:dimension/in_nether as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.TeleportData.Dim set value 1
execute if predicate predicate_lib:dimension/in_end as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.TeleportData.Dim set value 2

$execute as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.display.Lore prepend value '{"text":"§3[$(X), $(Y), $(Z)]§r"}'