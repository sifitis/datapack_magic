

execute store result score SLOTS magic_temp run data get entity @s Inventory
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{SpellTome:1b}}]}] run function magic:check_antimagic
