
loot spawn ~ ~1 ~ loot magic:tome_teleport

tag @e[type=item,distance=..1,limit=1,nbt={Age:0s}] add new_book

execute as @e[distance=..1,tag=new_book] run data modify entity @s PickupDelay set value 0s
data modify entity @e[distance=..1,tag=new_book,limit=1] Item.tag set from entity @s Inventory[{Slot:-106b}].tag