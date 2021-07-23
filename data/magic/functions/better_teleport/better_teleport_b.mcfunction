
## -- Executed as the area_effect_cloud from part a -- ##

# Requires a Pos[] and Rot[] array as well as a Dim value in magic:better_tp temp

data modify entity @s Pos set from storage magic:better_tp temp.Pos
data modify entity @s Rotation set from storage magic:better_tp temp.Rot

tp @e[tag=better_tp_subject] @s
kill @s