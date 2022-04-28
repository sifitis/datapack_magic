
tellraw @a {"text":"_________________________________________","color":"dark_purple"}
tellraw @a {"text":"               Running SpellTome v2.5.0","color":"dark_purple"}
tellraw @a {"text":"-----------------------------------------","color":"dark_purple"}
tellraw @a [{"text":"         "},{"text":" [HELP]   ","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":" • Help menu for all SpellTome operations","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/trigger tomes set 2"}},{"text":" [CONFIG] ","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":" • Configure settings for the SpellTome datapack","color":"gray"},{"text":" [OP REQUIRED]","color":"dark_red"}]},"clickEvent":{"action":"run_command","value":"/function config:config_magic"}},{"text":"   [ABOUT] ","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Some basic information on the datapack."}]},"clickEvent":{"action":"run_command","value":"/trigger tomes set 3"}}]
tellraw @a {"text":"Type '/trigger tomes' to access this page in the future","color":"dark_gray"}