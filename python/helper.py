import numpy as np
from scipy.spatial.transform import Rotation as R

# MC Coords: X, Y, Z
NV_NORTH = np.array([ 0,  0, -1])
NV_EAST  = np.array([ 1,  0,  0])
NV_SOUTH = np.array([ 0,  0,  1])
NV_WEST  = np.array([-1,  0,  0])
NV_UP    = np.array([ 0,  1,  0])
NV_DOWN  = np.array([ 0, -1,  0])
FOUR_DIRECTION_NVS = {"north": NV_NORTH, "east": NV_EAST, "south": NV_SOUTH, "west": NV_WEST}
DIRECTION_NVS = FOUR_DIRECTION_NVS | {"up": NV_UP, "down": NV_DOWN}
DIRECTION_DEGREES = {"north": 180, "east": -90, "south": 0, "west": 90}
CLOCKWISE = {"north": "east", "east": "south", "south": "west", "west": "north"}
COUNTERCLOCKWISE  = {"north": "west", "east": "north", "south": "east", "west": "south"}
X_AXIS = np.array([1, 0, 0])
Y_AXIS = np.array([0, 1, 0])
Z_AXIS = np.array([0, 0, 1])

def vector_to_local_coords(vector: np.ndarray) -> str:
    return f"~{round(vector[0], 2)} ~{round(vector[1], 2)} ~{round(vector[2], 2)}"

def rotate_vector_around_axis(vector: np.ndarray, axis: np.ndarray, angle_degrees: int) -> np.ndarray:
    """Rotate a vector around an arbitrary axis"""
    # Normalize the axis
    axis = axis / np.linalg.norm(axis)
    # Create rotation from axis and angle
    rotation = R.from_rotvec(axis * np.radians(angle_degrees))
    # Apply rotation
    return rotation.apply(vector)

def rotate_vector_around_point(vector: np.ndarray, point: np.ndarray, axis: np.ndarray, angle_degrees: int) -> np.ndarray:
    """Rotate a vector around a point with given axis"""
    # Translate to origin
    translated = vector - point
    # Rotate around origin
    rotated = rotate_vector_around_axis(translated, axis, angle_degrees)
    # Translate back
    return rotated + point


__all__ = [
    "NV_NORTH", "NV_EAST", "NV_SOUTH", "NV_WEST", "NV_UP", "NV_DOWN",
    "FOUR_DIRECTION_NVS", "DIRECTION_NVS", "DIRECTION_DEGREES", "CLOCKWISE", "COUNTERCLOCKWISE",
    "X_AXIS", "Y_AXIS", "Z_AXIS",
    "vector_to_local_coords", "rotate_vector_around_axis", "rotate_vector_around_point",
]

