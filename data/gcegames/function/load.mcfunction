tellraw @a {"text":"[GCEGames] Loaded GCEGames Datapack","color":"green"}
scoreboard objectives remove gcegames.temp
scoreboard objectives add gcegames.temp dummy
scoreboard objectives remove gcegames.shell_immunity_tick
scoreboard objectives add gcegames.shell_immunity_tick dummy
scoreboard objectives remove gcegames.game_sys_round
scoreboard objectives add gcegames.game_sys_round dummy {"text":"Round","color":"blue"}
scoreboard objectives setdisplay sidebar gcegames.game_sys_round
advancement revoke @a only gcegames:use_boost
advancement revoke @a only gcegames:use_red_shell
tag @a remove gcegames.temp.game_sys_join
tag @a remove gcegames.temp.selected_horse
