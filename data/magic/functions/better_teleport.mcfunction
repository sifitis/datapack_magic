
scoreboard objectives add better_tp dummy
execute store result score Dim better_tp run data get storage magic:better_tp temp.Dim

$execute if score Dim better_tp matches 0 in minecraft:overworld run tp @s $(PosX) $(PosY) $(PosZ) $(RotA) $(RotE)
$execute if score Dim better_tp matches 1 in minecraft:the_nether run tp @s $(PosX) $(PosY) $(PosZ) $(RotA) $(RotE)
$execute if score Dim better_tp matches 2 in minecraft:the_end run tp @s $(PosX) $(PosY) $(PosZ) $(RotA) $(RotE)

scoreboard objectives remove better_tp