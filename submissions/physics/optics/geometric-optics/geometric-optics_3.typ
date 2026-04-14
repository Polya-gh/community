#let n = 3
#let subject = "physics"
#let topic = "optics"
#let subtopic = "Geometric Optics"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Angular size",
    difficulty: "medium",
    statement: [
      An object $2$ cm tall is placed $40$ cm from a lens of focal length $8$ cm. Find the angular magnification compared to the near point ($D = 25$ cm).
    ],
    answer: $approx 3.1$,
    solution: [
      $M = (D)/(f) + 1 = (25)/(8) + 1 = 3.125 + 1... $ \
      Simple magnifier at near point: $M = (D)/(f) = (25)/(8) approx 3.1$.
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
