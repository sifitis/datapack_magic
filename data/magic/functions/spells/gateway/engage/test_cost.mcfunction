execute if score @s __xp >= cGATEWAY config_magic run function magic:spells/gateway/engage/test_proximity

execute unless score @s __xp >= cGATEWAY config_magic run tellraw @s {"text":"You don't have enough XP!","color":"red"}
execute unless score @s __xp >= cGATEWAY config_magic run function magic:spells/gateway/return_failed_book
execute unless score @s __xp >= cGATEWAY config_magic run function magic:sound_effects/use_fail