rotate @s 135.0 0
fill ~2 ~3 ~-3 ~2 ~3 ~-3 gray_concrete replace #replaceable
fill ~1 ~3 ~-3 ~1 ~3 ~-3 gray_concrete replace #replaceable
fill ~1 ~3 ~-2 ~1 ~3 ~-2 gray_concrete replace #replaceable
fill ~0 ~3 ~-2 ~0 ~3 ~-2 gray_concrete replace #replaceable
fill ~0 ~3 ~-1 ~0 ~3 ~-1 gray_concrete replace #replaceable
fill ~-1 ~3 ~-1 ~-1 ~3 ~-1 gray_concrete replace #replaceable
fill ~-1 ~3 ~0 ~-1 ~3 ~0 gray_concrete replace #replaceable
fill ~-2 ~3 ~0 ~-2 ~3 ~0 gray_concrete replace #replaceable
fill ~-2 ~3 ~1 ~-2 ~3 ~1 gray_concrete replace #replaceable
fill ~-3 ~3 ~1 ~-3 ~3 ~1 gray_concrete replace #replaceable
fill ~-3 ~3 ~2 ~-3 ~3 ~2 gray_concrete replace #replaceable
function gcegames:trackplacer/place_white
execute positioned ~-1 ~0 ~-1 run function gcegames:trackplacer/place_white
teleport @s ~-1 ~0 ~-1
