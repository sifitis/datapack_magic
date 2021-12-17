
# Run as potential portals to confirm they're the right one

execute store result score @s gateway run data get entity @s data.GateID 1.0

execute if score @s gateway = tomeID gateway run scoreboard players set prox_flag gateway 1
execute if score @s gateway = tomeID gateway run tag @s add unset_gateway