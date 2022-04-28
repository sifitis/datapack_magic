

execute as @a[nbt={Inventory:[{Slot:-106b,tag:{SpellTome:1b}}]}] at @s run function magic:check_antimagic

execute as @a if score @s is_sneaking matches 0 if predicate predicate_lib:is_sneaking at @s run function magic:detect_crouch

execute as @a if predicate predicate_lib:is_sneaking run scoreboard players set @s is_sneaking 1
execute as @a unless predicate predicate_lib:is_sneaking run scoreboard players set @s is_sneaking 0