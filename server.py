from sys import argv
from subprocess import run
from pathlib import Path
import re


def main():
    if len(argv) != 3:
        print("Usage: python server.py <input_file> <output_file>")
        return

    input_file = argv[1]
    output_file = argv[2]

    run(["typst-ts-cli", "compile", "--entry", input_file, "--format", "svg"])

    html = "<html><body style='margin: 0;'>"

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
