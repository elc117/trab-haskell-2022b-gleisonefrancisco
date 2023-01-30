import random
from typing import List, Tuple

canvaSize = 500
maxSize = 100
maxPos = 300

def svgBegin(w: float, h: float) -> str:
    return f"<svg width='{w}' height='{h}' xmlns='http://www.w3.org/2000/svg' style='background-color: black;'>\n"

def svgEnd() -> str:
    return "</svg>"

def svgCircle(cx: int, cy: int, r: int, style: str) -> str:
    return f"<circle cx='{cx}' cy='{cy}' r='{r}' {style} />\n"

def svgStyle(r: int, g: int, b: int) -> str:
    return f"style='fill:rgb({r},{g},{b});stroke-width:3;stroke:rgb({r},{g},{b})'"

def randomPalette(n: int) -> List[Tuple[int, int, int]]:
    all_randoms = random.sample(range(256), n*3)
    rs = all_randoms[:n]
    gs = all_randoms[n:2*n]
    bs = all_randoms[2*n:]
    return list(zip(rs, gs, bs))

def genRandomCirc(n: int) -> List[Tuple[int, int, int]]:
    cx = random.sample(range(maxPos), n)
    cy = random.sample(range(maxPos), n)
    r = random.sample(range(maxSize), n)
    return list(zip(cx, cy, r))

def main():
    n = randomPalette(5)
    g = genRandomCirc(5)
    svg_figs = "".join([svgCircle(cx, cy, r, svgStyle(r, g, b)) for (cx, cy, r), (r, g, b) in zip(g, n)])
    svg_string = svgBegin(canvaSize, canvaSize) + svg_figs + svgEnd()

    with open("output.svg", "w") as file:
        file.write(svg_string)

if __name__ == "__main__":
    main()
