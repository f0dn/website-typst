#import "colors.typ"

#let bgcolor = rgb(32, 32, 32)
#let page_width = 21cm

#let color_svg(svg, c) = {
  let colored_svg = read(svg).replace("#000000", c.to-hex())
  image(bytes(colored_svg))
}

#set text(font: "Kurinto Mono", size: 10pt, fill: colors.blue)
#show link: it => underline(it)
#show heading: it => align(text(size: 20pt, it), center)
#set page(
  fill: bgcolor,
  background: align(top, pad(image("assets/bg.jpeg"), top: 6cm)),
  height: auto,
  width: page_width,
  header: [
    #set image(width: 0.6cm, height: 0.6cm)
    #align(center, grid(
      align: right,
      columns: 4,
      gutter: 0.2cm,
      link("https://github.com/f0dn")[
        #color_svg("assets/github.svg", colors.blue)
      ],
      link("https://www.instagram.com/f0d1n")[
        #color_svg("assets/instagram.svg", colors.blue)
      ],
      link("https://linkedin.com/in/flint-mueller")[
        #color_svg("assets/linkedin.svg", colors.blue)
      ],
      link("TODO ADD RESUME HERE")[
        #color_svg("assets/resume.svg", colors.blue)
      ],
    ))
  ],
)

#grid(
  columns: 2,
  gutter: 1cm,
  align: horizon,
  [
    #box(
      inset: (top: 0.3cm, left: 0.05cm),
      fill: colors.text,
      clip: true,
      stroke: 0.1cm + colors.blue,
      radius: 10cm,
    )[
      #image("assets/me.png", width: 3.5cm, height: 5cm)
    ]
  ],
  [
    #set text(size: 20pt)
    Hi, I'm Flint, a sophomore studying computer science at Stony Brook University.
  ],
)

#v(5cm)

= Top Projects

#v(0.5cm)

#let project(body, name: str, url: str) = {
  align(center)[
    #link(url)[
      #name
    ] \
    #body
  ]
}

#grid(
  inset: 0.3cm,
  stroke: 0.05cm + colors.blue,
  columns: 3,
  gutter: 0.4cm,
  fill: colors.base,
  project(name: "Razor", url: "https://github.com/f0dn/razor")[
    Custom build compiler written in rust
  ],
  project(name: "This Website", url: "TODO PUT URL")[
    My personal portfolio written in typst
  ],
  project(name: "Trinity", url: "https://github.com/f0dn/chess")[
    Experimental chess engine to play around with bitboards and search algorithms
  ],
)

#align(center)[
  #box(
    fill: colors.base,
    stroke: 0.05cm + colors.blue,
    inset: 0.2cm,
  )[
    #link("something")[See More]
  ]
]

= About Me

#box(
  fill: colors.base,
  stroke: 0.05cm + colors.blue,
  inset: 0.2cm,
)[
  whole lot of yapping here im such a cool guy and i love coding and programming and i have
  all these projects that I work on.
  whole lot of yapping here im such a cool guy and i love coding and programming and i have
  all these projects that I work on.
  whole lot of yapping here im such a cool guy and i love coding and programming and i have
  all these projects that I work on.
  whole lot of yapping here im such a cool guy and i love coding and programming and i have
  all these projects that I work on.
  whole lot of yapping here im such a cool guy and i love coding and programming and i have
  all these projects that I work on.
]
