
loot spawn ~ ~ ~ loot magic:tome_teleport

tag @e[type=item,distance=..1,limit=1,nbt={Age:0s}] add teleport_book

execute as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.TeleportSet set value 1b
execute as @e[distance=..1,tag=teleport_book] run data modify entity @s PickupDelay set value 0s
execute as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.TeleportData.Rot set from entity @e[distance=..1,tag=teleport_setter,limit=1] Rotation

execute if predicate predicate_lib:dimension/in_overworld as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.TeleportData.Dim set value 0
execute if predicate predicate_lib:dimension/in_nether as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.TeleportData.Dim set value 1
execute if predicate predicate_lib:dimension/in_end as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.TeleportData.Dim set value 2
execute if predicate predicate_lib:dimension/in_deep_prism as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.TeleportData.Dim set value 3

execute as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.TeleportData.Pos set from entity @e[distance=..1,tag=teleport_setter,limit=1] Pos

execute store result score Xpos teleport run data get entity @s Pos[0] 1.0
execute store result score Ypos teleport run data get entity @s Pos[1] 1.0
execute store result score Zpos teleport run data get entity @s Pos[2] 1.0

execute as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.TeleportData.Display.Pos set value [0,0,0]
execute as @e[distance=..1,tag=teleport_book] store result entity @s Item.tag.TeleportData.Display.Pos[0] int 1 run scoreboard players get Xpos teleport
execute as @e[distance=..1,tag=teleport_book] store result entity @s Item.tag.TeleportData.Display.Pos[1] int 1 run scoreboard players get Ypos teleport
execute as @e[distance=..1,tag=teleport_book] store result entity @s Item.tag.TeleportData.Display.Pos[2] int 1 run scoreboard players get Zpos teleport
#execute as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.display.Lore prepend value '[{"score":{"name":"Xpos","objective":"teleport"}},{"text":", "},{"score":{"name":"Ypos","objective":"teleport"}},{"text":", "},{"score":{"name":"Zpos","objective":"teleport"}},{"text":"]"}]'
#execute as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.display.Lore prepend value [{"entity":"@s","nbt":"Item.tag.TeleportData.Display.Pos[0]","interpret":true}]
execute as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag.display.Lore prepend value '{"text":"§3Coordinates Set§r"}'
