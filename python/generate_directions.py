from pathlib import Path
import numpy as np

function_directory = Path("data/gcegames/function")
trackplacer_directory = function_directory / "trackplacer"
straight_directory = trackplacer_directory / "straight"
diagonal_directory = trackplacer_directory / "diagonal"

from helper import *

def write_straight_directions():
    for direction_name, direction_nv in FOUR_DIRECTION_NVS.items():
        path = straight_directory / f"{direction_name}.mcfunction"
        degrees = DIRECTION_DEGREES[direction_name]
        left  = COUNTERCLOCKWISE[direction_name]
        right =        CLOCKWISE[direction_name]
        start = 3*NV_UP + 3*DIRECTION_NVS[left ]
        stop  = 3*NV_UP + 3*DIRECTION_NVS[right]
        path.write_text(
            f"rotate @s {degrees} 0\n"
            f"fill {vector_to_local_coords(start)} {vector_to_local_coords(stop)} gray_concrete replace #replaceable\n"
            f"setblock {vector_to_local_coords(start + 1*NV_UP)} crimson_fence_gate[facing={left}]\n"
            f"setblock {vector_to_local_coords(stop + 1*NV_UP)} crimson_fence_gate[facing={right}]\n"
            "function gcegames:trackplacer/place_white\n"
            f"teleport @s {vector_to_local_coords(direction_nv)}\n"
        )

def write_diagonal_directions():
    for full_name, direction_a, direction_b in [
        ("northwest", "west", "north"), ("northeast", "north", "east"),
        ("southwest", "south", "west"), ("southeast", "east", "south")
    ]:
        path = diagonal_directory / f"{full_name}.mcfunction"
        left = DIRECTION_NVS[direction_a]
        right = DIRECTION_NVS[direction_b]
        forward = left + right
        points = [
          (- 1 * left + 3 * right + 1 * NV_UP, "crimson_fence"),
          (- 2 * left + 3 * right + 1 * NV_UP, "crimson_fence"),
          (- 2 * left + 3 * right, "gray_concrete"),
          (- 1 * left + 3 * right, "gray_concrete"),
          (- 1 * left + 2 * right, "gray_concrete"),
          (             2 * right, "gray_concrete"),
          (             1 * right, "gray_concrete"),
          (  1 * left + 1 * right, "gray_concrete"),
          (  1 * left            , "gray_concrete"),
          (  2 * left            , "gray_concrete"),
          (  2 * left - 1 * right, "gray_concrete"),
          (  3 * left - 1 * right, "gray_concrete"),
          (  3 * left - 2 * right, "gray_concrete"),
          (  3 * left - 2 * right + 1 * NV_UP, "crimson_fence"),
          (  3 * left - 1 * right + 1 * NV_UP, "crimson_fence"),
        ]
        points_code = ""
        for point, block in points:
            local_coords = vector_to_local_coords(point + 3*NV_UP)
            points_code += f"fill {local_coords} {local_coords} {block} replace #replaceable\n"
        
        degrees = (DIRECTION_DEGREES[direction_a] + DIRECTION_DEGREES[direction_b]) / 2
        path.write_text(
            f"rotate @s {degrees} 0\n"+
            points_code+
            "function gcegames:trackplacer/place_white\n"
            f"execute positioned {vector_to_local_coords(forward)} run function gcegames:trackplacer/place_white\n"
            f"teleport @s {vector_to_local_coords(forward)}\n"
        )

write_straight_directions()
write_diagonal_directions()
