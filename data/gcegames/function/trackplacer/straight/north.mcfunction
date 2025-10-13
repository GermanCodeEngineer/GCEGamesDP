rotate @s 180 0
fill ~-3 ~3 ~0 ~3 ~3 ~0 gray_concrete replace #replaceable
setblock ~-3 ~4 ~0 crimson_fence_gate[facing=west]
setblock ~3 ~4 ~0 crimson_fence_gate[facing=east]
function gcegames:trackplacer/place_white
teleport @s ~0 ~0 ~-1
