execute as @e[type=item_display,tag=gcegames.car_model] at @s if entity @a[distance=..3] run function gcegames:car/tick_model
execute as @e[type=armor_stand,tag=gcegames.trackplacer] at @s run function gcegames:trackplacer/run
execute as @e[type=shulker] at @s run function gcegames:trackplacer/summon_replace
