function magic:sound_effects/use_fail
item replace entity @s weapon.offhand with minecraft:air
function magic:givebook/smelt

execute if score bWARN_LO_XP config_magic matches 1.. run title @s actionbar {"text":"Not enough XP (","color":"red","extra":[{"score":{"name":"@s","objective":"__xp"}},{"text":"/"},{"score":{"name":"cSMELT","objective":"config_magic"}},{"text":")"}]}
execute if score bSMELT config_magic matches ..0 run title @s actionbar {"text":"Spell Disabled in Datapack Config Panel","color":"red"}

execute if entity @s[tag=smelt] run title @s actionbar {"text":"You're already using that spell!","color":"red"}