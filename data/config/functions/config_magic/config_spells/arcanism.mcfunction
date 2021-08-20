tellraw @s {"text":"======== Configuration for SpellBook Datapack ========","color":"gray"}
tellraw @s {"text":"                        === Arcanism ===","color":"dark_purple"}


tellraw @s {"text":""}
tellraw @s {"text":"","color":"gray","extra":[{"text":"[<<BACK] ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells"}},{"text":"[REFRESH]","color":"yellow","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells/arcanism"}},{"text":"  Click any [EDIT] button to change parameter."}]}
tellraw @s {"text":""}

#Prestidigitationc
execute unless score bPREST config_magic matches -2147483648..2147483647 run scoreboard players set bPREST config_magic 1
execute if score bPREST config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bPREST config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Allow Prestidigitation Spell. "}]}
execute if score bPREST config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bPREST config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Allow Prestidigitation Spell. "}]}

execute unless score cPREST config_magic matches -2147483648..2147483647 run scoreboard players set cPREST config_magic 1
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set cPREST config_magic "}},{"text":" ["},{"score":{"name":"cPREST","objective":"config_magic"},"color":"aqua"},{"text":"] XP Cost of the Prest. Spell "}]}

#Deep Prism
execute unless score bDPRISM config_magic matches -2147483648..2147483647 run scoreboard players set bDPRISM config_magic 1
execute if score bDPRISM config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bDPRISM config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Allow Deep Prism Spell. "}]}
execute if score bDPRISM config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bDPRISM config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Allow Deep Prism Spell. "}]}

execute unless score cDPRISM config_magic matches -2147483648..2147483647 run scoreboard players set cDPRISM config_magic 100
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set cDPRISM config_magic "}},{"text":" ["},{"score":{"name":"cDPRISM","objective":"config_magic"},"color":"aqua"},{"text":"] XP Cost of the Deep Prism Spell "}]}


tellraw @s {"text":"================================================","color":"gray"}