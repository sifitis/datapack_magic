execute if entity @e[type=marker,distance=..8,tag=gateway_entry] run title @s actionbar {"text":"This space is too close to another gateway","color":"red"}
execute if entity @e[type=marker,distance=..8,tag=gateway_entry] run function magic:spells/gateway/return_failed_book

execute unless entity @e[type=marker,distance=..8,tag=gateway_entry] run function magic:spells/gateway/engage