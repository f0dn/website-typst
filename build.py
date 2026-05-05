import argparse
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
        raise argparse.ArgumentTypeError("Invalid color format. Use #RRGGBB.")


def main():
    parser = argparse.ArgumentParser(description="Compile Typst to HTML :)")
    parser.add_argument("input_file", help="Input Typst file")
    parser.add_argument("output_file", help="Output HTML file")
    parser.add_argument(
        "--background_color",
        type=parse_color,
        help="Background color in #RRGGBB format",
        default="#ffffff",
    )
    parser.add_argument("--title", help="HTML title")
    parser.add_argument("--favicon", help="Favicon path or URL")
    args = parser.parse_args()

    run(
        ["typst-ts-cli", "compile", "--entry", args.input_file, "--format", "svg"],
        check=True,
    )

    html = """<html>
    <head>"""
    if args.title:
        html += f"""
        <title>{args.title}</title>"""
    if args.favicon:
        html += f"""
        <link rel="icon" href="{args.favicon}">"""
    html += f"""
    </head>
    <body style='margin: 0;background-color:{args.background_color};'>
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

    with open(args.output_file, "w") as f:
        f.write(html)

    svg_file.unlink()


if __name__ == "__main__":
    main()
