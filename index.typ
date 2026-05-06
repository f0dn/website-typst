#import "colors.typ"

#let bgcolor = rgb(32, 32, 32)
#let page_width = 21cm

#let color_svg(svg, c) = {
  let colored_svg = read(svg).replace("#000000", c.to-hex())
  image(bytes(colored_svg))
}

#set text(font: "DejaVu Sans Mono", size: 10pt, fill: colors.blue)
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

#align(center, box(
  fill: colors.base,
  stroke: 0.05cm + colors.blue,
  inset: 0.2cm,
)[#align(left)[
  I'm a computer science enthusiast who loves tinkering around with systems programming,
  compilers, and game development. I first discovered my passion for programming during
  the Covid-19 pandemic when I built a series of games with Unity and PyGame to keep
  myself busy.

  During my time at Stuyvesant High School, I continued programming and led the school's
  First Tech Challenge robotics team to the world championships. I also volunteer mentored // TODO PUT LINKS TO STUFF
  middle school students through The Metis Project for 2 years, teaching them programming
  fundamentals one-on-one. At the end of my junior year, I also landed an internship at
  Bloomberg, where I have been working for the past few summers on a variety of projects.
  I've learnt about distributed systems, telemetry, and how to handle production scale
  code.

  At Stony Brook, I've again joined the Robotics team, where I have been able to learn
  more about ROS, embedded programming, and hardware communication protocols. I have also
  been working on a high performance system for indexing DNA databases with Prof. Michael
  Ferdman. I've continued my passion for teaching others as well, mentoring a group of
  students through building their own chess engine from scratch through the Stony Brook
  Computing Society's Project Quack.

  Currently, I'm interested in a bunch of technologies, including Rust, Haskell, Typst,
  and Vim. On the non-cs side of things, I love playing chess and basketball, solving
  Rubik's cubes, and listening to music.
]])
