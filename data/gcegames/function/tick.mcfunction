# User
execute as @e[type=item_display,tag=gcegames.car_model] at @s if entity @a[] run function gcegames:car/tick_model
execute as @a at @s positioned ~-.75 ~-1 ~-.75 if entity @e[type=item_display,tag=gcegames.collectable, dx=1.5,dy=2,dz=1.5] \
    as @e[type=item_display,sort=nearest,limit=1] run function gcegames:collect
execute as @a at @s if entity @e[type=firework_rocket,tag=gcegames.red_shell,distance=..0.5] run function gcegames:red_shell/hit_player

# Dev
execute as @e[type=armor_stand,tag=gcegames.trackplacer] at @s run function gcegames:trackplacer/run
execute as @e[type=shulker] at @s run function gcegames:summon_shortcut
kill @e[type=item,nbt={Item:{id:"minecraft:shulker_shell"}}]
