
data merge storage magic:better_tp {temp:{Pos:[0.0d,0.0d,0.0d],Rot:[0.0d,0.0d],Dim:0}}

execute store result storage magic:better_tp temp.Pos[0] double 1.0 run scoreboard players get X tp_test
execute store result storage magic:better_tp temp.Pos[1] double 1.0 run scoreboard players get Y tp_test
execute store result storage magic:better_tp temp.Pos[2] double 1.0 run scoreboard players get Z tp_test

data modify storage magic:better_tp temp.Rot set from entity @s Rotation

function magic:better_teleport/better_teleport_a