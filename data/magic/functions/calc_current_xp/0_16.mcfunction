
## --- This function is a sub-function of calc_current_xp and is used to calculate when the number of levels is between 0 and 16 --- ##

## total xp = (level^2 + 6×level) + points (at levels 0–16) ##

scoreboard players operation TOTAL calc_current_xp = LEVELS calc_current_xp
scoreboard players add TOTAL calc_current_xp 6
scoreboard players operation TOTAL calc_current_xp *= LEVELS calc_current_xp
scoreboard players operation TOTAL calc_current_xp += POINTS calc_current_xp