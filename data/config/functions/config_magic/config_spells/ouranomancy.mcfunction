tellraw @s {"text":"======== Configuration for SpellBook Datapack ========","color":"gray"}
tellraw @s {"text":"                         === Ouranomancy ===","color":"dark_aqua"}

tellraw @s {"text":""}
tellraw @s {"text":"","color":"gray","extra":[{"text":"[<<BACK] ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells"}},{"text":"[REFRESH]","color":"yellow","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells/ouranomancy"}},{"text":"  Click any [EDIT] button to change parameter."}]}
tellraw @s {"text":""}

execute unless score bTELEPORT config_magic matches -2147483648..2147483647 run scoreboard players set bTELEPORT config_magic 1
execute if score bTELEPORT config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bTELEPORT config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Allow Teleport Spell. "}]}
execute if score bTELEPORT config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bTELEPORT config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Allow Teleport Spell. "}]}

execute unless score cTELEPORT config_magic matches -2147483648..2147483647 run scoreboard players set cTELEPORT config_magic 80
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set cTELEPORT config_magic "}},{"text":" ["},{"score":{"name":"cTELEPORT","objective":"config_magic"},"color":"aqua"},{"text":"] XP Cost of the Teleport Spell. "}]}

execute unless score bTP_COST_ON_SET config_magic matches -2147483648..2147483647 run scoreboard players set bTP_COST_ON_SET config_magic 1
execute if score bTP_COST_ON_SET config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bTP_COST_ON_SET config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Charge XP when setting instead of using. "}]}
execute if score bTP_COST_ON_SET config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bTP_COST_ON_SET config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Charge XP when setting instead of using. "}]}

tellraw @s {"text":""}

execute unless score bMASS_TP config_magic matches -2147483648..2147483647 run scoreboard players set bMASS_TP config_magic 1
execute if score bMASS_TP config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bMASS_TP config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Allow Mass Teleport Spell. "}]}
execute if score bMASS_TP config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bMASS_TP config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Allow Mass Teleport Spell. "}]}

execute unless score cMASS_TP config_magic matches -2147483648..2147483647 run scoreboard players set cMASS_TP config_magic 800
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set cMASS_TP config_magic "}},{"text":" ["},{"score":{"name":"cMASS_TP","objective":"config_magic"},"color":"aqua"},{"text":"] XP Cost of the Mass Teleport Spell. "}]}

execute unless score bMTP_COST_ON_SET config_magic matches -2147483648..2147483647 run scoreboard players set bMTP_COST_ON_SET config_magic 1
execute if score bMTP_COST_ON_SET config_magic matches ..0 run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bTP_COST_ON_SET config_magic 1"}},{"text":" ["},{"text":"FALSE","color":"red"},{"text":"] Charge XP when setting instead of using. "}]}
execute if score bMTP_COST_ON_SET config_magic matches 1.. run tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/scoreboard players set bTP_COST_ON_SET config_magic 0"}},{"text":" ["},{"text":"TRUE","color":"green"},{"text":"] Charge XP when setting instead of using. "}]}

execute unless score MTP_DURATION config_magic matches -2147483648..2147483647 run scoreboard players set MTP_DURATION config_magic 200
tellraw @s {"text":"","color":"gray","extra":[{"text":"[EDIT]","color":"dark_gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set MTP_DURATION config_magic "}},{"text":" ["},{"score":{"name":"MTP_DURATION","objective":"config_magic"},"color":"aqua"},{"text":"] Duration of Mass TP Circle in ticks. "}]}

tellraw @s {"text":"================================================","color":"gray"}