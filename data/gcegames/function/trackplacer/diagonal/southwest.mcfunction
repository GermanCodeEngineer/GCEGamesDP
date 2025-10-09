rotate @s 0 0
setblock ~1 ~3 ~2 gray_concrete keep
setblock ~ ~3 ~2 gray_concrete keep
setblock ~ ~3 ~1 gray_concrete keep
setblock ~-1 ~3 ~1 gray_concrete keep
setblock ~-1 ~3 ~ gray_concrete keep
setblock ~-2 ~3 ~ gray_concrete keep
setblock ~-2 ~3 ~-1 gray_concrete keep
function gcegames:trackplacer/place
execute positioned ~-1 ~ ~1 run function gcegames:trackplacer/place
teleport @s ~-1 ~ ~1
