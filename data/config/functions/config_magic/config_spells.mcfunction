tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":"======== Configuration for SpellBook Datapack ========","color":"gray"}
tellraw @s {"text":"                           === Spells ===","color":"gray"}


tellraw @s {"text":""}
tellraw @s {"text":"","color":"gray","extra":[{"text":"[<<BACK] ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function config:config_magic"}},{"text":"[REFRESH]","color":"yellow","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells"}},{"text":"  Click any [EDIT] button to change parameter."}]}
tellraw @s {"text":""}

tellraw @s {"text":"[ARCANISM] ","color":"dark_purple","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells/arcanism"}}
tellraw @s {"text":"[ABJURATION] ","color":"#CC2222","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells/abjuration"}}
tellraw @s {"text":"[PYROMANCY] ","color":"red","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells/pyromancy"}}
tellraw @s {"text":"[PURIFICATION] ","color":"yellow","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells/purification"}}
tellraw @s {"text":"[HYDROMANCY] ","color":"blue","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells/hydromancy"}}
tellraw @s {"text":"[OURANOMANCY] ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells/ouranomancy"}}
tellraw @s {"text":"[AEROMANCY] ","color":"white","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells/aeromancy"}}
tellraw @s {"text":"[GEOMANCY] ","color":"dark_green","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells/geomancy"}}
tellraw @s {"text":"[SOMATICS] ","color":"green","clickEvent":{"action":"run_command","value":"/function config:config_magic/config_spells/somatics"}}


tellraw @s {"text":"================================================","color":"gray"}