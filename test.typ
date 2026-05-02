#import "colors.typ"

#set page(fill: colors.blue)
#set text(font: "Arial", size: 20pt)
#show link: it => underline(text(fill: colors.yellow, it))

#grid(
  columns: 2,
  gutter: 5%,
  align: horizon,
  [
    #box(clip: true, stroke: 0.1cm + colors.teal, radius: 10cm)[
      #image("me.png", width: 3cm, height: 5cm)
    ]
  ],
  [
    Hi, I'm flint i go to stony and its very cool also heres a picture of me
  ],
)

lets test a link!

https://www.google.com // wow look at that

#let project(body, name: none, link: none) = {
  align(center)[
    #name \
    #link \
    #body
  ]
}

#grid(
  columns: 2,
  fill: colors.yellow,
  project(name: "test project", link: "https://www.google.com")[this is a test project],
  project(name: "number 2", link: "https://www.google.com")[this is a test project],
)
