## THIS IS THE PRIMARY DRIVER FOR ALL TICK-BASED FUNCTIONS ##

execute if score MAGIC_ENABLED config_magic matches 1.. run function magic:detect_spell
execute if score bCD_CLEANER config_magic matches 1.. run function magic:cooldown_cleaner

execute as @e[type=marker,tag=persistant] as @s[tag=sifMagic] at @s run function magic:persist_driver
execute as @a[tag=persistant] at @s run function magic:persist_driver

