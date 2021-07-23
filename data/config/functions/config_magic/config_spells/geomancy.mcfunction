tellraw @s {"text":"======== Configuration for SpellBook Datapack ========","color":"gray"}
tellraw @s {"text":"                         === Geomancy ===","color":"dark_green"}

tellraw @s {"text":""}
tellraw @s {"text":"","color":"gray","extra":[{"text":"[<<BACK] ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells"}},{"text":"[REFRESH]","color":"yellow","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells/geomancy"}},{"text":"  Click any [EDIT] button to change parameter."}]}
tellraw @s {"text":""}

execute unless score bSMELT config_magic matches -2147483648..2147483647 run scoreboard players set bSMELT config_magic 1
execute if score bSMELT config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bSMELT config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Allow Smelt Spell. "}]}
execute if score bSMELT config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bSMELT config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Allow Smelt Spell. "}]}

execute unless score cSMELT config_magic matches -2147483648..2147483647 run scoreboard players set cSMELT config_magic 300
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set cSMELT config_magic "}},{"text":" ["},{"score":{"name":"cSMELT","objective":"config_magic"},"color":"aqua"},{"text":"] XP Cost of the Smelt Spell "}]}

tellraw @s {"text":"================================================","color":"gray"}