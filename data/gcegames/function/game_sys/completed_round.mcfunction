scoreboard players add @s gcegames.game_sys_round 1
clear @s paper[item_model="gcegames:coin"]
execute if score @s gcegames.game_sys_round matches 4.. run function gcegames:game_sys/won
