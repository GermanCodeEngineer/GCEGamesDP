tag @e[type=horse,sort=nearest,limit=1,tag=!gcegames.car_horse.ridden] add gcegames.temp.selected_horse
tag @n[type=horse,sort=nearest,limit=1,tag=gcegames.temp.selected_horse] add gcegames.car_horse.ridden
ride @s mount @n[type=horse,sort=nearest,limit=1,tag=gcegames.temp.selected_horse]
tag @n[type=horse,sort=nearest,limit=1,tag=gcegames.temp.selected_horse] remove gcegames.temp.selected_horse

