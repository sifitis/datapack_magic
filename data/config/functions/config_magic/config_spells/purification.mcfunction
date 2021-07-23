tellraw @s {"text":"======== Configuration for SpellBook Datapack ========","color":"gray"}
tellraw @s {"text":"                        === Purification ===","color":"yellow"}


tellraw @s {"text":""}
tellraw @s {"text":"","color":"gray","extra":[{"text":"[<<BACK] ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells"}},{"text":"[REFRESH]","color":"yellow","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells/purification"}},{"text":"  Click any [EDIT] button to change parameter."}]}
tellraw @s {"text":""}

execute unless score bRESTORE config_magic matches -2147483648..2147483647 run scoreboard players set bRESTORE config_magic 1
execute if score bRESTORE config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bRESTORE config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Allow Restore Spell. "}]}
execute if score bRESTORE config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bRESTORE config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Allow Restore Spell. "}]}

execute unless score cRESTORE config_magic matches -2147483648..2147483647 run scoreboard players set cRESTORE config_magic 25000
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set cRESTORE config_magic "}},{"text":" ["},{"score":{"name":"cRESTORE","objective":"config_magic"},"color":"aqua"},{"text":"] XP Cost of the Restore Spell "}]}

tellraw @s {"text":""}

execute unless score bSUNNY_DAY config_magic matches -2147483648..2147483647 run scoreboard players set bSUNNY_DAY config_magic 1
execute if score bSUNNY_DAY config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bSUNNY_DAY config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Allow Sunny Day Spell. "}]}
execute if score bSUNNY_DAY config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bSUNNY_DAY config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Allow Sunny Day Spell. "}]}

execute unless score cSUNNY_DAY config_magic matches -2147483648..2147483647 run scoreboard players set cSUNNY_DAY config_magic 1200
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set cSUNNY_DAY config_magic "}},{"text":" ["},{"score":{"name":"cSUNNY_DAY","objective":"config_magic"},"color":"aqua"},{"text":"] XP Cost of the Sunny Day Spell "}]}

execute unless score bSD_NEEDS_SUN config_magic matches -2147483648..2147483647 run scoreboard players set bSD_NEEDS_SUN config_magic 1
execute if score bSD_NEEDS_SUN config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bSD_NEEDS_SUN config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Sunny Day Spell requires it be daytime. "}]}
execute if score bSD_NEEDS_SUN config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bSD_NEEDS_SUN config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Sunny Day Spell requires it be daytime. "}]}

tellraw @s {"text":"================================================","color":"gray"}