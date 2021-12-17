execute store result score tomeID gateway run data get entity @s Inventory[{Slot:-106b}].tag.GateID

scoreboard players set prox_flag gateway 0

execute as @e[tag=gateway_entry,type=marker,distance=..3] at @s run function magic:spells/gateway/unset/test_id

execute if score prox_flag gateway matches 0 run function magic:spells/gateway/unset/prox_fail

execute if score prox_flag gateway matches 1 as @e[tag=unset_gateway,type=marker,distance=..3] at @s run function magic:spells/gateway/unset/remove_marker
execute if score prox_flag gateway matches 1 run item replace entity @s weapon.offhand with minecraft:air
execute if score prox_flag gateway matches 1 run function magic:givebook/gateway