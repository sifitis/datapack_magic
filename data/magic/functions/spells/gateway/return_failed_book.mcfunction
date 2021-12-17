
#run as spell caster

#store book contents
data modify storage magic:gateway temp set from entity @s Inventory[{Slot:-106b}].tag

#delete from offhand
item replace entity @s weapon.offhand with minecraft:air

#create new one
loot spawn ~ ~1 ~ loot magic:tome_gateway
tag @e[type=item,distance=..1,limit=1,nbt={Age:0s}] add teleport_book
execute as @e[distance=..1,tag=teleport_book] run data modify entity @s PickupDelay set value 0s

#put data back into book

execute as @e[distance=..1,tag=teleport_book] run data modify entity @s Item.tag set from storage magic:gateway temp