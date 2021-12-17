
data modify entity @s data merge value {TeleportData:{Pos:[0.0d,0.0d,0.0d],Rot:[0.0d,0.0d],Dim:0},GateID:0}

#Put relevant data in marker
execute store result entity @s data.GateID int 1 run scoreboard players get gateID gateway
data modify entity @s data.TeleportData set from entity @a[tag=teleport_caster,limit=1] Inventory[{Slot:-106b}].tag.TeleportData

#Some countdown stuff?
#scoreboard players operation @s cd_mtp_engage = MTP_DURATION config_magic
#scoreboard players operation CD_TTL cd_mtp_engage = MTP_DURATION config_magic

scoreboard players set @s cd_gateway 5

tag @s remove new
