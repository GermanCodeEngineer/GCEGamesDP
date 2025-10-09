execute if block ~ ~ ~ magenta_glazed_terracotta[facing=north] run function gcegames:trackplacer/straight/south
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=south] run function gcegames:trackplacer/straight/north
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=east] run function gcegames:trackplacer/straight/west
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=west] run function gcegames:trackplacer/straight/east
execute if block ~ ~ ~ lime_glazed_terracotta[facing=north] run function gcegames:trackplacer/diagonal/southwest
execute if block ~ ~ ~ bricks run function gcegames:trackplacer/straight_to_diagonal/southwest
execute unless block ~ ~ ~ magenta_glazed_terracotta unless block ~ ~ ~ lime_glazed_terracotta unless block ~ ~ ~ bricks run function gcegames:trackplacer/kill
