tellraw @s {"text":"======== Configuration for SpellBook Datapack ========","color":"gray"}
tellraw @s {"text":"                         === Pyromancy ===","color":"red"}

tellraw @s {"text":""}
tellraw @s {"text":"","color":"gray","extra":[{"text":"[<<BACK] ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells"}},{"text":"[REFRESH]","color":"yellow","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells/pyromancy"}},{"text":"  Click any [EDIT] button to change parameter."}]}
tellraw @s {"text":""}

execute unless score bFIREBALL config_magic matches -2147483648..2147483647 run scoreboard players set bFIREBALL config_magic 1
execute if score bFIREBALL config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bFIREBALL config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Allow Fireball Spell. "}]}
execute if score bFIREBALL config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bFIREBALL config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Allow Fireball Spell. "}]}

execute unless score cFIREBALL config_magic matches -2147483648..2147483647 run scoreboard players set cFIREBALL config_magic 20
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set cFIREBALL config_magic "}},{"text":" ["},{"score":{"name":"cFIREBALL","objective":"config_magic"},"color":"aqua"},{"text":"] XP Cost of the Fireball Spell "}]}

tellraw @s {"text":""}

execute unless score bSMELT config_magic matches -2147483648..2147483647 run scoreboard players set bSMELT config_magic 1
execute if score bSMELT config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bSMELT config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Allow Smelt Spell. "}]}
execute if score bSMELT config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bSMELT config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Allow Smelt Spell. "}]}

execute unless score cSMELT config_magic matches -2147483648..2147483647 run scoreboard players set cSMELT config_magic 300
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set cSMELT config_magic "}},{"text":" ["},{"score":{"name":"cSMELT","objective":"config_magic"},"color":"aqua"},{"text":"] XP Cost of the Smelt Spell "}]}

tellraw @s {"text":"================================================","color":"gray"}