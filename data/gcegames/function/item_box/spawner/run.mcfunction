scoreboard players add @s gcegames.item_box_spawner_tick 1
execute if score @s gcegames.item_box_spawner_tick matches ..40 run return 0
execute at @s if entity @e[type=item,distance=..1] run return 0
execute at @s run function gcegames:item_box/summon
scoreboard players set @s gcegames.item_box_spawner_tick 0
