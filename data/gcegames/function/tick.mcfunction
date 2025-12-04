# User
execute as @e[type=item_display,tag=gcegames.car_model] at @s run function gcegames:car/tick_model
execute as @a at @s positioned ~-.75 ~-1 ~-.75 if entity @e[type=item_display,tag=gcegames.activate_on_touch_wide, dx=1.5,dy=2,dz=1.5] \
    as @e[type=item_display,sort=nearest,limit=1] run function gcegames:touch_activate
execute as @a at @s positioned ~-.75 ~-1 ~-.75 if entity @e[type=item_display,tag=gcegames.activate_on_touch_narrow, dx=0.2,dy=1,dz=0.2] \
    as @e[type=item_display,sort=nearest,limit=1] run function gcegames:touch_activate
execute as @a[scores={gcegames.shell_immunity_tick=..0}] at @s positioned ~-0.5 ~ ~-0.5 if entity @e[type=firework_rocket,tag=gcegames.red_shell,dx=1,dy=2,dz=1] run function gcegames:red_shell/hit_player
scoreboard players remove @a[scores={gcegames.shell_immunity_tick=1..}] gcegames.shell_immunity_tick 1

# Dev
execute as @e[type=armor_stand,tag=gcegames.trackplacer] at @s run function gcegames:trackplacer/run
execute as @e[type=shulker] at @s run function gcegames:summon_shortcut
kill @e[type=item,nbt={Item:{id:"minecraft:shulker_shell"}}]
