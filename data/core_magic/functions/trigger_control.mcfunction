
#This function runs every tick to ensure players always have access to the trigger commands.
#Runs as server

schedule function core_magic:trigger_control 1t append

execute as @a[scores={tomes=1..}] at @s run function core_magic:trigger_directory

scoreboard players enable @a tomes