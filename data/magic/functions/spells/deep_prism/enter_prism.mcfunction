
#Oh boy, this one was a doozy to make work... good luck understanding it, future me.

#scoreboard objectives remove deep_prism
scoreboard objectives add deep_prism dummy

function magic:spells/deep_prism/calc_prism_pos

#Add a little to the coords so you don't teleport to the corner of the chamber
scoreboard players add X deep_prism 16
scoreboard players add Z deep_prism 16

#send player to chamber
function magic:spells/deep_prism/goto_chamber/a


