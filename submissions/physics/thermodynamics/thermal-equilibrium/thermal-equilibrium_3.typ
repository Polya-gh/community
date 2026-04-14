#let n = 3
#let subject = "physics"
#let topic = "thermodynamics"
#let subtopic = "Thermal Equilibrium"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Two rods",
    difficulty: "medium",
    statement: [
      Two rods, one copper ($k_1 = 400 "W" dot "m"^(-1) dot "K"^(-1)$) and one iron ($k_2 = 80 "W" dot "m"^(-1) dot "K"^(-1)$), have equal length and area. They are placed in parallel between a $100 degree.c$ and $0 degree.c$ reservoir. Find the ratio of heat conducted by copper to iron.
    ],
    answer: $5$,
    solution: [
      Since length, area, and $Delta T$ are equal, the ratio is simply $(k_1)/(k_2) = (400)/(80) = 5$.
    ],
    source: "",
  ),
)

#set page(margin: 2.5cm)
#set text(font: "New Computer Modern", size: 11pt)
#set par(justify: true)

#align(center)[
  #text(size: 20pt, weight: "bold")[#subtopic \##n]
  #v(0.3em)
  #v(0.5em)
  #grid(
    columns: (1fr,) * contributors.len(),
    ..contributors.map(c => align(center, text(size: 9pt)[u/#c]))
  )
]

#v(1em)
#line(length: 100%)
#v(1em)

#for (i, p) in problems.enumerate() [
  #block[
    *Problem #(i + 1)* · #p.title
    #h(1fr)
  ]
  #v(0.3em)
  #p.statement
  #v(0.5em)
  #align(right, line(length: 10%, stroke: 0.3pt + black))  #v(0.8em)
]
#pagebreak()
#text(size: 14pt, weight: "bold")[Solutions]
#v(0.5em)
#line(length: 100%)
#v(0.5em)

#for (i, p) in problems.enumerate() [
  *#(i + 1). #p.title* \
  #p.solution
  #v(0.5em)
  *Answer:* #p.answer
  #v(1em)
]
