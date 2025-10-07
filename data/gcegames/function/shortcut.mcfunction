kill @e[type=minecraft:armor_stand]
function gcegames:trackplacer/clear_area
execute as @e[type=armor_stand,tag=gcegames.trackplacer] at @s run function gcegames:trackplacer/run
