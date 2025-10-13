rotate @s 0 0
fill ~3 ~3 ~0 ~-3 ~3 ~0 gray_concrete replace #replaceable
setblock ~3 ~4 ~0 crimson_fence_gate[facing=east]
setblock ~-3 ~4 ~0 crimson_fence_gate[facing=west]
function gcegames:trackplacer/place_white
teleport @s ~0 ~0 ~1
