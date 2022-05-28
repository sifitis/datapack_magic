

# import relevant data
execute store result score .2D check_am run data get storage magic:virtual_objects antimagic_zones_temp[0].2D 1.0

execute store result score .X check_am run data get storage magic:virtual_objects antimagic_zones_temp[0].X 1.0
execute store result score .pX check_am run data get entity @s Pos[0]
execute if score .2D check_am matches 0 store result score .Y check_am run data get storage magic:virtual_objects antimagic_zones_temp[0].Y 1.0
execute if score .2D check_am matches 0 store result score .pY check_am run data get entity @s Pos[1]

execute store result score .Z check_am run data get storage magic:virtual_objects antimagic_zones_temp[0].Z 1.0
execute store result score .pZ check_am run data get entity @s Pos[2]

execute store result score .R check_am run data get storage magic:virtual_objects antimagic_zones_temp[0].RADIUS 1.0
execute store result score .S check_am run data get storage magic:virtual_objects antimagic_zones_temp[0].SQUARE 1.0

# calcuate position delta
scoreboard players operation .X check_am -= .pX check_am
scoreboard players operation .Y check_am -= .pY check_am
scoreboard players operation .Z check_am -= .pZ check_am

# check if player is inside zone
execute if score .S check_am matches 1.. run function magic:check_antimagic/b_square
execute if score .S check_am matches ..0 run function magic:check_antimagic/b_circle

# iterate to next amz entry
data remove storage magic:virtual_objects antimagic_zones_temp[0]
scoreboard players remove .i check_am 1
execute if score .i check_am matches 1 if score am_applied check_am matches 0 run function magic:check_antimagic/a