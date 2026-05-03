#import "colors.typ"

#let bgcolor = rgb(32, 32, 32)
#let width = 21cm

#set text(font: "Kurinto Mono", size: 10pt, fill: colors.blue)
#show link: it => underline(text(fill: colors.yellow, it))
#show heading: it => align(text(size: 20pt, it), center)
#set page(
  fill: bgcolor,
  background: align(top, pad(image("photos/bg.jpeg"), top: 6cm)),
  height: auto,
  width: width,
  header: [
    // github icon
    #link("https://github.com/f0dn")[
      #image("photos/github-mark-white.svg", width: 0.6cm, height: 0.6cm)
    ]
  ],
)

#grid(
  columns: 2,
  gutter: 1cm,
  align: horizon,
  [
    #box(clip: true, stroke: 0.1cm + colors.blue, radius: 10cm)[
      #image("photos/me.png", width: 3cm, height: 5cm)
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
