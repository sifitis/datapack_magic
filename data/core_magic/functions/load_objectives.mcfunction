
#  Description: Runs on load to initialize all necessary scoreboards
#  		Inputs: None
#      Outputs: None
#    Tagged in: #minecraft:load

scoreboard objectives add __xp dummy
scoreboard objectives add config_magic dummy
scoreboard objectives add persistance dummy

function core_magic:self_driver_init
execute in magic:deep_prism run forceload add 0 0

#===These get run to initialize all config vars==#
function config:config_magic
function config:config_magic/config_spells
function config:config_magic/config_spells/arcanism
function config:config_magic/config_spells/pyromancy
function config:config_magic/config_spells/hydromancy
function config:config_magic/config_spells/aeromancy
function config:config_magic/config_spells/ouranomancy
function config:config_magic/config_spells/geomancy
function config:config_magic/config_spells/somatics


#=========MATH STUFF=============#
function math:util_random/generate_obj
function math:util_constants/generate_obj
#================================#


#   used in magic:calc_current_xp
scoreboard players set CONST_10 m_constants 10
scoreboard players set CONST_16 m_constants 16
scoreboard players set CONST_25 m_constants 25
scoreboard players set CONST_45 m_constants 45
scoreboard players set CONST_405 m_constants 405
scoreboard players set CONST_1625 m_constants 1625
scoreboard players set CONST_MAX m_constants 
#================================#


#=======TRADER SUMMONING========#
team add no_collision
team modify no_collision collisionRule never
#===============================#

function core_magic:splash