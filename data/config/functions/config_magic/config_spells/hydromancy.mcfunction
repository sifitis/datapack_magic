tellraw @s {"text":"======== Configuration for SpellBook Datapack ========","color":"gray"}
tellraw @s {"text":"                        === Hydromancy ===","color":"blue"}


tellraw @s {"text":""}
tellraw @s {"text":"","color":"gray","extra":[{"text":"[<<BACK] ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells"}},{"text":"[REFRESH]","color":"yellow","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells/hydromancy"}},{"text":"  Click any [EDIT] button to change parameter."}]}
tellraw @s {"text":""}

execute unless score bRAIN config_magic matches -2147483648..2147483647 run scoreboard players set bRAIN config_magic 1
execute if score bRAIN config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bRAIN config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Allow Rain Spell. "}]}
execute if score bRAIN config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bRAIN config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Allow Rain Spell. "}]}

execute unless score cRAIN config_magic matches -2147483648..2147483647 run scoreboard players set cRAIN config_magic 1500
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set cRAIN config_magic "}},{"text":" ["},{"score":{"name":"cRAIN","objective":"config_magic"},"color":"aqua"},{"text":"] XP Cost of the Rain Spell "}]}

execute unless score STORM_% config_magic matches -2147483648..2147483647 run scoreboard players set STORM_% config_magic 10
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set STORM_% config_magic "}},{"text":" ["},{"score":{"name":"STORM_%","objective":"config_magic"},"color":"aqua"},{"text":"] Percent chance of starting a storm when using rain "}]}

tellraw @s {"text":""}

execute unless score bGEYSER config_magic matches -2147483648..2147483647 run scoreboard players set bGEYSER config_magic 0
execute if score bGEYSER config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bGEYSER config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Allow Geyser Spell. "}]}
execute if score bGEYSER config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bGEYSER config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Allow Geyser Spell. "}]}

execute unless score cGEYSER config_magic matches -2147483648..2147483647 run scoreboard players set cGEYSER config_magic 30
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set cGEYSER config_magic "}},{"text":" ["},{"score":{"name":"cGEYSER","objective":"config_magic"},"color":"aqua"},{"text":"] XP Cost of the Geyser Spell "}]}

execute unless score ttlGEYSER config_magic matches -2147483648..2147483647 run scoreboard players set ttlGEYSER config_magic 200
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set ttlGEYSER config_magic "}},{"text":" ["},{"score":{"name":"ttlGEYSER","objective":"config_magic"},"color":"aqua"},{"text":"] Duration of Geyser Spell "}]}

tellraw @s {"text":""}

execute unless score bMM_BLESSING config_magic matches -2147483648..2147483647 run scoreboard players set bMM_BLESSING config_magic 1
execute if score bMM_BLESSING config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bMM_BLESSING config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Allow Mermaid's Blessing. "}]}
execute if score bMM_BLESSING config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bMM_BLESSING config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Allow Mermaid's Blessing. "}]}

execute unless score cMM_BLESSING config_magic matches -2147483648..2147483647 run scoreboard players set cMM_BLESSING config_magic 1200
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set cMM_BLESSING config_magic "}},{"text":" ["},{"score":{"name":"cMM_BLESSING","objective":"config_magic"},"color":"aqua"},{"text":"] XP Cost of Mermaid's Blessing. "}]}

execute unless score ttlMM_BLESSING config_magic matches -2147483648..2147483647 run scoreboard players set ttlMM_BLESSING config_magic 3000
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set ttlMM_BLESSING config_magic "}},{"text":" ["},{"score":{"name":"ttlMM_BLESSING","objective":"config_magic"},"color":"aqua"},{"text":"] Duration of Mermaid's Blessing. "}]}


tellraw @s {"text":"================================================","color":"gray"}