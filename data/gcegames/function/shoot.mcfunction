execute as @p at @s run summon firework_rocket ~ ~1.5 ~ {ShotAtAngle:1b,LifeTime:60,FireworksItem:{id:"minecraft:firework_rocket",count:1b,tag:{Fireworks:{Flight:2}}}}
execute as @p at @s rotated as @s run tp @e[type=firework_rocket,sort=nearest,limit=1] ^ ^ ^0.4
