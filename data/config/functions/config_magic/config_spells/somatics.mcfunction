tellraw @s {"text":"======== Configuration for SpellBook Datapack ========","color":"gray"}
tellraw @s {"text":"                         === Somatics ===","color":"green"}

tellraw @s {"text":""}
tellraw @s {"text":"","color":"gray","extra":[{"text":"[<<BACK] ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells"}},{"text":"[REFRESH]","color":"yellow","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells/somatics"}},{"text":"  Click any [EDIT] button to change parameter."}]}
tellraw @s {"text":""}

execute unless score bVITALIZE config_magic matches -2147483648..2147483647 run scoreboard players set bVITALIZE config_magic 1
execute if score bVITALIZE config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bVITALIZE config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Allow Vitalize Spell. "}]}
execute if score bVITALIZE config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bVITALIZE config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Allow Vitalize Spell. "}]}

execute unless score cVITALIZE config_magic matches -2147483648..2147483647 run scoreboard players set cVITALIZE config_magic 400
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set cVITALIZE config_magic "}},{"text":" ["},{"score":{"name":"cVITALIZE","objective":"config_magic"},"color":"aqua"},{"text":"] XP Cost of the Vitalize Spell "}]}

execute unless score bFEAST config_magic matches -2147483648..2147483647 run scoreboard players set bFEAST config_magic 1
execute if score bFEAST config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bFEAST config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Allow Sorcerer's Feast Spell. "}]}
execute if score bFEAST config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bFEAST config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Allow Sorcerer's Feast Spell. "}]}

execute unless score cFEAST config_magic matches -2147483648..2147483647 run scoreboard players set cFEAST config_magic 400
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set cFEAST config_magic "}},{"text":" ["},{"score":{"name":"cFEAST","objective":"config_magic"},"color":"aqua"},{"text":"] XP Cost of the Sorcerer's Feast Spell "}]}


tellraw @s {"text":"================================================","color":"gray"}