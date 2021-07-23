
## --- This function is a sub-function of calc_current_xp and is used to calculate when the number of levels is between 17 and 31 --- ##

## total xp = (2.5 × level^2) – (40.5 × level) + 360 + points (at levels 17–31) ##

## Modified because scoreboard doesn't support decimals ##
## total xp = ((25 × level^2) – (405 × level))/10 + 360 + points (at levels 17–31) ##

scoreboard players operation TOTAL calc_current_xp = LEVELS calc_current_xp
scoreboard players operation TOTAL calc_current_xp *= CONST_25 m_constants
scoreboard players operation TOTAL calc_current_xp -= CONST_405 m_constants
scoreboard players operation TOTAL calc_current_xp *= LEVELS calc_current_xp
scoreboard players operation TOTAL calc_current_xp /= CONST_10 m_constants
scoreboard players add TOTAL calc_current_xp 360
scoreboard players operation TOTAL calc_current_xp += POINTS calc_current_xp