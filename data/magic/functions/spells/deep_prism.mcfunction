
#Oh boy, this one was a doozy to make work... good luck understanding it, future me.

execute unless predicate predicate_lib:dimension/in_deep_prism run function magic:spells/deep_prism/begin_entry



execute if predicate predicate_lib:dimension/in_deep_prism if score @s prism_escaped matches 0 run function magic:spells/deep_prism/leave_prism
execute if predicate predicate_lib:dimension/in_deep_prism if score @s prism_escaped matches 1 run function magic:spells/deep_prism/prism_warden/deny_exit