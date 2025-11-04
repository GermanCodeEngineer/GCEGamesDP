tellraw @a {"text":"[GCEGames] Loaded GCEGames Datapack","color":"green"}
scoreboard objectives remove gcegames.temp
scoreboard objectives add gcegames.temp dummy
advancement revoke @a only gcegames:use_boost
advancement revoke @a only gcegames:use_red_shell
