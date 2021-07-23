
data modify entity @s data merge value {TeleportData:{Pos:[0.0d,0.0d,0.0d],Rot:[0.0d,0.0d],Dim:0}}

data modify entity @s data.TeleportData set from entity @a[tag=teleport_caster,limit=1] Inventory[{Slot:-106b}].tag.TeleportData


scoreboard players operation @s cd_mtp_engage = MTP_DURATION config_magic
scoreboard players operation @s cd_mtp_engage = MTP_DURATION config_magic

scoreboard players operation CD_TTL cd_mtp_engage = MTP_DURATION config_magic
scoreboard players operation CD_TTL cd_mtp_engage = MTP_DURATION config_magic


#add a little time to the clock for the opening and closing animation
scoreboard players add @s cd_mtp_engage 80
scoreboard players add CD_TTL cd_mtp_engage 80


#relevant times needed for the opening animation
scoreboard players operation R1_start cd_mtp_engage = @s cd_mtp_engage
scoreboard players remove R1_start cd_mtp_engage 20

scoreboard players operation R2_start cd_mtp_engage = @s cd_mtp_engage
scoreboard players remove R2_start cd_mtp_engage 40

scoreboard players operation R3_start cd_mtp_engage = @s cd_mtp_engage
scoreboard players remove R3_start cd_mtp_engage 60

tag @s remove new
