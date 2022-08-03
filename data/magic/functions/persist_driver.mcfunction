
# -- This is the driver for all spells that need to run (eg: persist) outside of a player or the initial spell cast -- #
# -- Executor: Any marker or player that is tagged as persistant

#-marker
execute as @s[tag=geyser] at @s run function magic:spells/geyser/persist
execute as @s[tag=mass_tp_entry] at @s run function magic:spells/mass_teleport/engage/persist
execute as @s[tag=gateway_entry] at @s run function magic:spells/gateway/engage/persist

#-player
execute as @s[tag=mm_blessing] at @s run function magic:spells/mm_blessing/persist
#execute as @s[tag=teleport_engage] at @s run function magic:spells/teleport/engage/persist
execute as @s[tag=levitate] at @s run function magic:spells/levitate/persist
execute as @s[tag=smelt] at @s run function magic:spells/smelt/persist
execute as @s[tag=salamander] at @s run function magic:spells/salamander/persist