execute store result score @p gcegames.temp if items entity @p container.* paper[item_model="gcegames:coin"]

execute if score @p gcegames.temp matches 0 run data modify entity @n[type=horse] attributes[0].base set value 0.20
execute if score @p gcegames.temp matches 1 run data modify entity @n[type=horse] attributes[0].base set value 0.23
execute if score @p gcegames.temp matches 2 run data modify entity @n[type=horse] attributes[0].base set value 0.26
execute if score @p gcegames.temp matches 3 run data modify entity @n[type=horse] attributes[0].base set value 0.29
execute if score @p gcegames.temp matches 4 run data modify entity @n[type=horse] attributes[0].base set value 0.32
execute if score @p gcegames.temp matches 5 run data modify entity @n[type=horse] attributes[0].base set value 0.35
execute if score @p gcegames.temp matches 6 run data modify entity @n[type=horse] attributes[0].base set value 0.38
execute if score @p gcegames.temp matches 7 run data modify entity @n[type=horse] attributes[0].base set value 0.41
execute if score @p gcegames.temp matches 8 run data modify entity @n[type=horse] attributes[0].base set value 0.44
execute if score @p gcegames.temp matches 9 run data modify entity @n[type=horse] attributes[0].base set value 0.47
execute if score @p gcegames.temp matches 10 run data modify entity @n[type=horse] attributes[0].base set value 0.50
