
#--run as the aec from part b--#

#generate barrier chamber
forceload add ~ ~ ~16 ~16
fill ~ ~ ~ ~31 ~31 ~31 minecraft:barrier hollow
forceload remove ~ ~ ~16 ~16

#create anchor for day-2-day operation in the prism
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["prism_anchor"]}