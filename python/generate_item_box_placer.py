from pathlib import Path

function_directory = Path("data/gcegames/function")
item_box_directory = function_directory / "item_box"
item_box_placer_file = item_box_directory / "summon_all.mcfunction"

def write_item_box_placer(coords: list[str]):
    commands = ""
    for coord in coords:
        commands += f"execute positioned {coord} positioned ~ ~0.5 ~ run function gcegames:item_box/spawner/summon\n"
    item_box_placer_file.write_text(commands)

write_item_box_placer(coords=[
    "-92 73 221",
    "-94 73 221",
    "-67 76 268",
    "-67 76 270",
    "-37 75 249",
    "-38 64 181",
    "-26 63 166",
    "-1 78 158",
    "27 92 160",
    "0 82 188",
    "-21 72 155",
    "-23 72 155",
    "-98 61 161",
    "-96 61 161",
])
