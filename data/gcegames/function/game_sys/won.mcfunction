title @a title ["",{"selector":"@s"},{"text":" won!","color":"#45e016"}]
execute as @a run ride @s dismount
function gcegames:reset_entities
scoreboard players reset @a gcegames.game_sys_round
teleport @a -88.5 69 144.5
