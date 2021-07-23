function magic:sound_effects/use_fail

# -- This line is needed or the new book stacks with the old one and both get deleted -- #
item modify entity @s weapon.offhand magic:make_unstackable

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{TeleportSet:0b}}]}] run function magic:givebook/teleport
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{TeleportSet:1b}}]}] run function magic:spells/fail/teleport_fail/return_tome

item replace entity @s weapon.offhand with minecraft:air

execute if score bWARN_LO_XP config_magic matches 1.. run title @s actionbar {"text":"Not enough XP (","color":"red","extra":[{"score":{"name":"@s","objective":"__xp"}},{"text":"/"},{"score":{"name":"cTELEPORT","objective":"config_magic"}},{"text":")"}]}
execute if score bTELEPORT config_magic matches ..0 run title @s actionbar {"text":"Spell Disabled in Datapack Config Panel","color":"red"}