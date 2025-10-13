rotate @s -90 0
fill ~0 ~3 ~-3 ~0 ~3 ~3 gray_concrete replace #replaceable
setblock ~0 ~4 ~-3 crimson_fence_gate[facing=north]
setblock ~0 ~4 ~3 crimson_fence_gate[facing=south]
function gcegames:trackplacer/place_white
teleport @s ~1 ~0 ~0
