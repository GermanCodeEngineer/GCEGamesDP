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
        start = 3*NV_UP + 3*DIRECTION_NVS[COUNTERCLOCKWISE[direction_name]]
        stop  = 3*NV_UP + 3*DIRECTION_NVS[       CLOCKWISE[direction_name]]
        path.write_text(
            f"rotate @s {degrees} 0\n"
            f"fill {vector_to_local_coords(start)} {vector_to_local_coords(stop)} gray_concrete keep\n"
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
          - 2 * left + 3 * right,
          - 1 * left + 3 * right,
          - 1 * left + 2 * right,
                       2 * right,
                       1 * right,
            1 * left + 1 * right,
            1 * left,
            2 * left,
            2 * left - 1 * right,
            3 * left - 1 * right,
            3 * left - 2 * right,
        ]
        points_code = ""
        for point in points:
            points_code += f"setblock {vector_to_local_coords(point + 3*NV_UP)} gray_concrete keep\n"
        
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
