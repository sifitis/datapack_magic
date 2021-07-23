
## --- This function is a sub-function of calc_current_xp and is used to calculate when the number of levels 32+ --- ##

## total xp = (4.5 × level^2) – (162.5 × level) + 2220 + points (at levels 32+) ##

## Modified because scoreboard doesn't support decimals ##
## total xp = ((45 × level^2) – (1625 × level))/10 + 2220 + points (at levels 32+) ##

scoreboard players operation TOTAL calc_current_xp = LEVELS calc_current_xp
scoreboard players operation TOTAL calc_current_xp *= CONST_45 m_constants
scoreboard players operation TOTAL calc_current_xp -= CONST_1625 m_constants
scoreboard players operation TOTAL calc_current_xp *= LEVELS calc_current_xp
scoreboard players operation TOTAL calc_current_xp /= CONST_10 m_constants
scoreboard players add TOTAL calc_current_xp 2220
scoreboard players operation TOTAL calc_current_xp += POINTS calc_current_xp