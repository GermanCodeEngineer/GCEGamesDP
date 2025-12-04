tag @p add gcegames.temp.touch_activate
execute positioned -83 73 210 run function gcegames:car/summon
execute as @p[tag=gcegames.temp.touch_activate] at @s run teleport @s ~ ~ ~ facing ~-1 ~ ~1
execute as @p[tag=gcegames.temp.touch_activate] at @s run function gcegames:car/enter_nearest
scoreboard players set @p[tag=gcegames.temp.touch_activate] gcegames.shell_immunity_tick 0
tag @a remove gcegames.temp.touch_activate
