tellraw @a {"text":"[GCEGames] Loaded GCEGames Datapack","color":"green"}
scoreboard objectives remove gcegames.temp
scoreboard objectives add gcegames.temp dummy
scoreboard objectives remove gcegames.shell_immunity_tick
scoreboard objectives add gcegames.shell_immunity_tick dummy
advancement revoke @a only gcegames:use_boost
advancement revoke @a only gcegames:use_red_shell
tag @a remove gcegames.temp.touch_activate
tag @a remove gcegames.temp.selected_horse
