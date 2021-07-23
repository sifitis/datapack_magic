
## -- The actual function has been redirected into the jump/jump function so that this test could be applied -- #

execute if predicate predicate_lib:effect/levitation run title @s actionbar {"text":"Can't jump while levitating!","color":"white"}
execute unless predicate predicate_lib:effect/levitation run function magic:spells/jump/jump
