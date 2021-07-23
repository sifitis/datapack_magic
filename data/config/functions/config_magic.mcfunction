tellraw @s {"text":"======== Configuration for SpellBook Datapack ========","color":"gray"}
tellraw @s {"text":""}
tellraw @s {"text":"[","color":"gray","extra":[{"text":"REFRESH","color":"yellow","clickEvent":{"action":"run_command","value":"/function config:config_magic"}},{"text":"]  Click any [EDIT] button to change parameter."}]}
tellraw @s {"text":""}

execute unless score MAGIC_ENABLED config_magic matches -2147483648..2147483647 run scoreboard players set MAGIC_ENABLED config_magic 1
execute if score MAGIC_ENABLED config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set MAGIC_ENABLED config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Enable Spells. "}]}
execute if score MAGIC_ENABLED config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set MAGIC_ENABLED config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Enable Spells. "}]}

execute unless score bWARN_LO_XP config_magic matches -2147483648..2147483647 run scoreboard players set bWARN_LO_XP config_magic 1
execute if score bWARN_LO_XP config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bWARN_LO_XP config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Show Low XP Warning. "}]}
execute if score bWARN_LO_XP config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bWARN_LO_XP config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Show Low XP Warning. "}]}

execute unless score MAX_RAY_LEN1 config_magic matches -2147483648..2147483647 run scoreboard players set MAX_RAY_LEN1 config_magic 200
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set MAX_RAY_LEN1 config_magic "}},{"text":" ["},{"score":{"name":"MAX_RAY_LEN1","objective":"config_magic"},"color":"aqua"},{"text":"] Max Length of Type 1 Raytracers "}]}

tellraw @s {"text":""}

tellraw @s {"text":"[","color":"gray","extra":[{"text":"SPELLS","color":"blue","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells"}},{"text":"]"}]}

tellraw @s {"text":"================================================","color":"gray"}