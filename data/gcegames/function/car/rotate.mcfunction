execute store result score @s gcegames.temp run data get entity @e[type=horse,tag=gcegames_car_horse,sort=nearest,limit=1] Rotation[0]
#data modify entity @s Rotation[0] set value 50
#execute store result entity @e[type=minecraft:horse,tag=gcegames_car_horse,limit=1] Rotation[0] float 1 run data get entity @e[type=horse,tag=gcegames_car_horse,sort=nearest,limit=1] Rotation[0]
data modify entity @s Rotation[0] set from entity @e[type=horse,tag=gcegames_car_horse,sort=nearest,limit=1] Rotation[0]
