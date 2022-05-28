
# -- This is the driver for all spells that need to run (eg: persist) outside of a player or the initial spell cast -- #
# -- Executor: player with persistance score

execute if score @s cd_smelt matches 1.. run scoreboard players remove @s cd_smelt 1

execute if score @s cd_smelt matches 1.. run playsound minecraft:block.campfire.crackle master @s ~ ~ ~ 0.5 1
execute if score @s cd_smelt matches 1.. run particle minecraft:dripping_lava ~ ~1.2 ~ 0.4 0.8 0.4 1 2 force

execute if score @s cd_smelt matches 51..60 run title @s actionbar [{"text":">>> ","color":"yellow","bold":true},{"text":"3 seconds","color":"yellow","bold":true},{"text":" <<<","color":"yellow","bold":true}]
execute if score @s cd_smelt matches 41..50 run title @s actionbar [{"text":">>> ","color":"red","bold":true},{"text":"3 seconds","color":"red","bold":true},{"text":" <<<","color":"red","bold":true}]
execute if score @s cd_smelt matches 31..40 run title @s actionbar [{"text":">> ","color":"yellow","bold":true},{"text":"2 seconds","color":"yellow","bold":true},{"text":" <<","color":"yellow","bold":true}]
execute if score @s cd_smelt matches 21..30 run title @s actionbar [{"text":">> ","color":"red","bold":true},{"text":"2 seconds","color":"red","bold":true},{"text":" <<","color":"red","bold":true}]
execute if score @s cd_smelt matches 11..20 run title @s actionbar [{"text":"> ","color":"yellow","bold":true},{"text":"1 second","color":"yellow","bold":true},{"text":" <","color":"yellow","bold":true}]
execute if score @s cd_smelt matches 1..10 run title @s actionbar [{"text":"> ","color":"red","bold":true},{"text":"1 second","color":"red","bold":true},{"text":" <","color":"red","bold":true}]


# -- Once score reaches 0 -- #

execute if score @s cd_smelt matches ..0 run stopsound @s * minecraft:block.campfire.crackle
execute if score @s cd_smelt matches 4 run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.1 0.6
execute if score @s cd_smelt matches 1 run playsound minecraft:entity.ghast.shoot master @s ~ ~ ~ 1 0

execute if score @s cd_smelt matches ..0 run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.05 100 force
execute if score @s cd_smelt matches ..0 run item modify entity @s weapon magic:smelt
execute if score @s cd_smelt matches ..0 run title @s actionbar {"text":"SMELT!","color":"red","bold":true}


execute if score @s cd_smelt matches ..0 run tag @s remove smelt
execute if score @s cd_smelt matches 0 run scoreboard players remove @s persistance 1