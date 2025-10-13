execute if block ~ ~ ~ magenta_glazed_terracotta[facing=north] run function gcegames:trackplacer/straight/south
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=east] run function gcegames:trackplacer/straight/west
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=south] run function gcegames:trackplacer/straight/north
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=west] run function gcegames:trackplacer/straight/east
execute if block ~ ~ ~ lime_glazed_terracotta[facing=north] run function gcegames:trackplacer/diagonal/southwest
execute if block ~ ~ ~ lime_glazed_terracotta[facing=east] run function gcegames:trackplacer/diagonal/northwest
execute if block ~ ~ ~ lime_glazed_terracotta[facing=south] run function gcegames:trackplacer/diagonal/northeast
execute if block ~ ~ ~ lime_glazed_terracotta[facing=west] run function gcegames:trackplacer/diagonal/southeast
execute if block ~ ~ ~ light_gray_glazed_terracotta[facing=north] run teleport @s ~ ~-1 ~
execute if block ~ ~ ~ light_gray_glazed_terracotta[facing=east] run teleport @s ~ ~-1 ~
execute if block ~ ~ ~ light_gray_glazed_terracotta[facing=south] run teleport @s ~ ~1 ~
execute if block ~ ~ ~ light_gray_glazed_terracotta[facing=west] run teleport @s ~ ~1 ~
execute unless block ~ ~ ~ magenta_glazed_terracotta unless block ~ ~ ~ lime_glazed_terracotta unless block ~ ~ ~ light_gray_glazed_terracotta run kill @s
