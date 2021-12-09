
# -- Executor: player with persistance score

execute if score @s cd_dprism matches 1.. run scoreboard players remove @s cd_dprism 1

# -- Once score reaches 0 -- #

execute if score @s cd_dprism matches 0 run function magic:spells/deep_prism/enter_prism

execute if score @s cd_dprism matches ..0 run tag @s remove dprism
execute if score @s cd_dprism matches 0 run scoreboard players remove @s persistance 1