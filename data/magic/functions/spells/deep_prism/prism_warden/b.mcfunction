
execute unless score @s prism_escape_lvl matches 1.. run tellraw @s {"text":"As you leave the protective confines of the Prism, you feel the governance of reality it maintained fall away.","color":"dark_blue"}
execute unless score @s prism_escape_lvl matches 1.. run scoreboard players set @s prism_escape_lvl 10

execute if predicate predicate_lib:probability/1in10 run scoreboard players add @s prism_escape_lvl 10


#These are all the fun effects you might get!

execute if score @s prism_escape_lvl matches 30.. if predicate predicate_lib:probability/1in10 run playsound minecraft:particle.soul_escape ambient @s ~ ~ ~ 1 0

execute if score @s prism_escape_lvl matches 50..99 if predicate predicate_lib:probability/1in20 run effect give @s minecraft:blindness 5 1 true
execute if score @s prism_escape_lvl matches 50..99 if predicate predicate_lib:probability/1in50 run effect give @s minecraft:hunger 3 128 true
execute if score @s prism_escape_lvl matches 50.. if predicate predicate_lib:probability/1in50 run tp @s ~ ~ ~ ~90 ~


execute if score @s prism_escape_lvl matches 70.. if predicate predicate_lib:probability/1in20 run playsound minecraft:entity.vex.ambient ambient @s ~ ~ ~ 1 0
execute if score @s prism_escape_lvl matches 70.. if predicate predicate_lib:probability/1in50 run effect give @s minecraft:speed 1 10 true
execute if score @s prism_escape_lvl matches 70.. if predicate predicate_lib:probability/1in20 run effect give @s minecraft:slowness 5 10 true

execute if score @s prism_escape_lvl matches 100.. if predicate predicate_lib:probability/1in20 run effect give @s minecraft:blindness 15 1 true
execute if score @s prism_escape_lvl matches 100.. if predicate predicate_lib:probability/1in10 run effect give @s minecraft:hunger 2 128 true

execute if score @s prism_escape_lvl matches 120.. if predicate predicate_lib:probability/1in50 run effect give @s minecraft:wither 15 1 true
execute if score @s prism_escape_lvl matches 120..149 if predicate predicate_lib:probability/1in50 run effect give @s minecraft:levitation 15 1 true

execute if score @s prism_escape_lvl matches 150..179 if predicate predicate_lib:probability/1in20 run effect give @s minecraft:wither 20 1 true
execute if score @s prism_escape_lvl matches 180.. if predicate predicate_lib:probability/1in10 run effect give @s minecraft:wither 20 1 true