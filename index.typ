#import "colors.typ"

#let bgcolor = rgb(32, 32, 32)
#let page_width = 21cm

#let color_svg(svg, c) = {
  let colored_svg = read(svg).replace("#000000", c.to-hex())
  image(bytes(colored_svg))
}

#set text(font: "Kurinto Mono", size: 10pt, fill: colors.blue)
#show link: it => underline(text(fill: colors.yellow, it))
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
      link("https://github.com/f0dn")[
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
    #box(clip: true, stroke: 0.1cm + colors.blue, radius: 10cm)[
      #image("assets/me.png", width: 3cm, height: 5cm)
    ]
  ],
  [
    #set text(size: 20pt)
    Hi, I'm flint i go to stony and its very cool also heres a picture of me
  ],
)

#v(5cm)

= Projects

#let project(body, name: none, link: none) = {
  box(inset: 0.3cm)[
    #align(center)[
      #name \
      #link \
      #body
    ]
  ]
}

#grid(
  columns: 3,
  gutter: 0.4cm,
  fill: colors.base,
  project(name: "test project", link: "https://www.google.com")[this is a test project],
  project(name: "number 2", link: "https://www.google.com")[this is a test project],
  project(name: "test project", link: "https://www.google.com")[this is a test project],

  project(name: "number 2", link: "https://www.google.com")[this is a test project],
  project(name: "test project", link: "https://www.google.com")[this is a test project],
  project(name: "number 2", link: "https://www.google.com")[this is a test project],

  project(name: "test project", link: "https://www.google.com")[this is a test project],
  project(name: "number 2", link: "https://www.google.com")[this is a test project],
)

dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
dsakj\
