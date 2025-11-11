clear @s crossbow[charged_projectiles=[]]
data modify entity @n Tags set value ["gcegames.entity", "gcegames.shell", "gcegames.red_shell", "gcegames.red_shell_rocket"]
tag @n[type=firework_rocket] add gcegames.red_shell
particle sweep_attack ~ ~1 ~ 0 0 0 0.5 20
playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1
advancement revoke @s only gcegames:use_red_shell
