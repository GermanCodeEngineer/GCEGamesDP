rotate @s 135.0 0
setblock ~2 ~3 ~-3 gray_concrete keep
setblock ~1 ~3 ~-3 gray_concrete keep
setblock ~1 ~3 ~-2 gray_concrete keep
setblock ~0 ~3 ~-2 gray_concrete keep
setblock ~0 ~3 ~-1 gray_concrete keep
setblock ~-1 ~3 ~-1 gray_concrete keep
setblock ~-1 ~3 ~0 gray_concrete keep
setblock ~-2 ~3 ~0 gray_concrete keep
setblock ~-2 ~3 ~1 gray_concrete keep
setblock ~-3 ~3 ~1 gray_concrete keep
setblock ~-3 ~3 ~2 gray_concrete keep
function gcegames:trackplacer/place_white
execute positioned ~-1 ~0 ~-1 run function gcegames:trackplacer/place_white
teleport @s ~-1 ~0 ~-1
