#import "colors.typ": *

#set page(fill: blue)


#image("me.png", width: 20%, height: 20%)
Hi, I'm flint i go to stony and its very cool also heres a picture of me

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
  fill: yellow,
  project(name: "test project", link: "https://www.google.com")[this is a test project],
  project(name: "number 2", link: "https://www.google.com")[this is a test project],
)
