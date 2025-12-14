tag @s add gcegames.temp.game_sys_join
execute positioned -83 73 210 run function gcegames:car/summon
execute as @s[tag=gcegames.temp.game_sys_join] at @p run teleport @p ~ ~ ~ facing ~-1 ~ ~1
execute as @s[tag=gcegames.temp.game_sys_join] at @p run function gcegames:car/enter_nearest
scoreboard players set @s[tag=gcegames.temp.game_sys_join] gcegames.shell_immunity_tick 0
scoreboard players set @s[tag=gcegames.temp.game_sys_join] gcegames.game_sys_round 0
tag @a remove gcegames.temp.game_sys_join
