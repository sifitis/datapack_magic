execute as @a[tag=exit_prism_fx] at @s run function magic:visual_effects/witch_triangle_large
execute as @a[tag=exit_prism_fx] at @s run particle minecraft:crit ~ ~ ~ 1 1 1 2 500 force
execute as @a[tag=exit_prism_fx] at @s run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 0