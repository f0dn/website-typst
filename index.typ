#import "colors.typ"

#set page(fill: colors.blue, background: image("photos/bg.jpeg"))
#set text(font: "Kurinto Mono", size: 10pt, fill: colors.blue)
#show link: it => underline(text(fill: colors.yellow, it))
#show heading: it => align(text(size: 20pt, it), center)

#grid(
  columns: 2,
  gutter: 5%,
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
  columns: 2,
  gutter: 3%,
  fill: colors.base,
  project(name: "test project", link: "https://www.google.com")[this is a test project],
  project(name: "number 2", link: "https://www.google.com")[this is a test project],
)
