from sys import argv
from subprocess import run
from pathlib import Path
import re

def parse_color(color_str):
    if color_str.startswith("#") and len(color_str) == 7:
        r = int(color_str[1:3], 16)
        g = int(color_str[3:5], 16)
        b = int(color_str[5:7], 16)
        return f"rgb({r}, {g}, {b})"
    else:
        raise ValueError("Invalid color format. Use #RRGGBB.")

def main():
    if len(argv) != 6:
        print("Usage: python server.py <input_file> <output_file> <background_color> <title> <favicon>")
        return

    input_file = argv[1]
    output_file = argv[2]
    background_color = parse_color(argv[3])
    title = argv[4]
    favicon = argv[5]

    run(["typst-ts-cli", "compile", "--entry", input_file, "--format", "svg"])

    html = f"""<html>
    <head>
        <title>{title}</title>
        <link rel="icon" href="{favicon}">
    </head>
    <body style='margin: 0;background-color:{background_color};'>
    """

    svg_file = Path("index.artifact.svg")
    contents = svg_file.read_text()
    contents = contents.replace("<svg", "<svg style='width: 100%; height: auto;'")
    contents = re.sub(
        r'viewBox="0 0 (\d+)',
        lambda m: f'viewBox="0 0 {int(m.group(1)) - 1}',
        contents,
    )
    contents = re.sub(
        r'width="(\d+)',
        lambda m: f'width="{int(m.group(1)) - 1}',
        contents,
    )
    html += contents + "\n"

    html += "</body></html>"

    with open(output_file, "w") as f:
        f.write(html)

    svg_file.unlink()


if __name__ == "__main__":
    main()
