tellraw @s {"text":"======== Configuration for SpellBook Datapack ========","color":"gray"}
tellraw @s {"text":"                        === Aeromancy ===","color":"white"}


tellraw @s {"text":""}
tellraw @s {"text":"","color":"gray","extra":[{"text":"[<<BACK] ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells"}},{"text":"[REFRESH]","color":"yellow","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells/aeromancy"}},{"text":"  Click any [EDIT] button to change parameter."}]}
tellraw @s {"text":""}

execute unless score bLEVITATE config_magic matches -2147483648..2147483647 run scoreboard players set bLEVITATE config_magic 1
execute if score bLEVITATE config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bLEVITATE config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Allow Levitate Spell. "}]}
execute if score bLEVITATE config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bLEVITATE config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Allow Levitate Spell. "}]}

execute unless score cLEVITATE config_magic matches -2147483648..2147483647 run scoreboard players set cLEVITATE config_magic 80
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set cLEVITATE config_magic "}},{"text":" ["},{"score":{"name":"cLEVITATE","objective":"config_magic"},"color":"aqua"},{"text":"] XP Cost of the Levitate Spell. "}]}

tellraw @s {"text":""}

execute unless score bSILENCE config_magic matches -2147483648..2147483647 run scoreboard players set bSILENCE config_magic 1
execute if score bSILENCE config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bSILENCE config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Allow Levitate Spell. "}]}
execute if score bSILENCE config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bSILENCE config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Allow Levitate Spell. "}]}

execute unless score cSILENCE config_magic matches -2147483648..2147483647 run scoreboard players set cSILENCE config_magic 30
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set cSILENCE config_magic "}},{"text":" ["},{"score":{"name":"cSILENCE","objective":"config_magic"},"color":"aqua"},{"text":"] XP Cost of the Levitate Spell. "}]}

execute unless score bCOST_UNMUTE config_magic matches -2147483648..2147483647 run scoreboard players set bCOST_UNMUTE config_magic 0
execute if score bCOST_UNMUTE config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bCOST_UNMUTE config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Charge XP to unmute. "}]}
execute if score bCOST_UNMUTE config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bCOST_UNMUTE config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Charge XP to unmute. "}]}

tellraw @s {"text":""}

execute unless score bJUMP config_magic matches -2147483648..2147483647 run scoreboard players set bJUMP config_magic 1
execute if score bJUMP config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bJUMP config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Allow Air Jump Spell. "}]}
execute if score bJUMP config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bJUMP config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Allow Air Jump Spell. "}]}

execute unless score cJUMP config_magic matches -2147483648..2147483647 run scoreboard players set cJUMP config_magic 5
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set cJUMP config_magic "}},{"text":" ["},{"score":{"name":"cJUMP","objective":"config_magic"},"color":"aqua"},{"text":"] XP Cost of the Air Jump Spell. "}]}


tellraw @s {"text":"================================================","color":"gray"}