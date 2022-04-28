
execute store result score SEL_SLOT magic_temp run data get entity @s SelectedItemSlot
data remove storage magic:temp SelectedItemSlotData

execute if score SEL_SLOT magic_temp matches 0 run data modify storage magic:temp SelectedItemSlotData[] set from entity @s Inventory[{Slot:0b}]
execute if score SEL_SLOT magic_temp matches 1 run data modify storage magic:temp SelectedItemSlotData[] set from entity @s Inventory[{Slot:1b}]
execute if score SEL_SLOT magic_temp matches 2 run data modify storage magic:temp SelectedItemSlotData[] set from entity @s Inventory[{Slot:2b}]
execute if score SEL_SLOT magic_temp matches 3 run data modify storage magic:temp SelectedItemSlotData[] set from entity @s Inventory[{Slot:3b}]
execute if score SEL_SLOT magic_temp matches 4 run data modify storage magic:temp SelectedItemSlotData[] set from entity @s Inventory[{Slot:4b}]
execute if score SEL_SLOT magic_temp matches 5 run data modify storage magic:temp SelectedItemSlotData[] set from entity @s Inventory[{Slot:5b}]
execute if score SEL_SLOT magic_temp matches 6 run data modify storage magic:temp SelectedItemSlotData[] set from entity @s Inventory[{Slot:6b}]
execute if score SEL_SLOT magic_temp matches 7 run data modify storage magic:temp SelectedItemSlotData[] set from entity @s Inventory[{Slot:7b}]
execute if score SEL_SLOT magic_temp matches 8 run data modify storage magic:temp SelectedItemSlotData[] set from entity @s Inventory[{Slot:8b}]

execute if data storage magic:temp SelectedItemSlotData[{tag:{SpellTome:1b}}] run function magic:display_tome_info