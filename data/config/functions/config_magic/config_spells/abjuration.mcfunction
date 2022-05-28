tellraw @s {"text":"======== Configuration for SpellBook Datapack ========","color":"gray"}
tellraw @s {"text":"                        === Abjuration ===","color":"#CC2222"}


tellraw @s {"text":""}
tellraw @s {"text":"","color":"gray","extra":[{"text":"[<<BACK] ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells"}},{"text":"[REFRESH]","color":"yellow","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells/abjuration"}},{"text":"  Click any [EDIT] button to change parameter."}]}
tellraw @s {"text":""}

execute unless score bDISPEL config_magic matches -2147483648..2147483647 run scoreboard players set bDISPEL config_magic 1
execute if score bDISPEL config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bDISPEL config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Allow Dispel Spell. "}]}
execute if score bDISPEL config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bDISPEL config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Allow Dispel Spell. "}]}

execute unless score cDISPEL config_magic matches -2147483648..2147483647 run scoreboard players set cDISPEL config_magic 20
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set cDISPEL config_magic "}},{"text":" ["},{"score":{"name":"cDISPEL","objective":"config_magic"},"color":"aqua"},{"text":"] XP Cost of the Dispel Spell "}]}

tellraw @s {"text":""}

tellraw @s {"text":"================================================","color":"gray"}