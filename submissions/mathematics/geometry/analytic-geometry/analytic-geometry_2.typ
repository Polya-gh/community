#let n = 2
#let subject = "mathematics"
#let topic = "geometry"
#let subtopic = "Analytic Geometry"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Ellipse",
    difficulty: "medium",
    statement: [
      Identify the centre, semi-major axis, and semi-minor axis of $(x^2)/(25) + (y^2)/(9) = 1$.
    ],
    answer: $a = 5$,
    solution: [
      The equation is in standard form $(x^2)/(a^2) + (y^2)/(b^2) = 1$. \
      Centre: $(0,0)$, $a = 5$ (semi-major), $b = 3$ (semi-minor).
    ],
    source: "",
  ),
  (
    title: "Circle centre",
    difficulty: "medium",
    statement: [
      Find the centre and radius of the circle $x^2 + y^2 - 6x + 4y - 3 = 0$.
    ],
    answer: $r = 4$,
    solution: [
      Complete the square: $(x-3)^2 - 9 + (y+2)^2 - 4 - 3 = 0$. \
      $(x-3)^2 + (y+2)^2 = 16$. \
      Centre $(3, -2)$, $r = 4$.
    ],
    source: "",
  ),
  (
    title: "Triangle area",
    difficulty: "medium",
    statement: [
      Find the area of the triangle with vertices $A(0, 0)$, $B(4, 0)$, $C(1, 3)$.
    ],
    answer: $6$,
    solution: [
      $A = (1)/(2) |x_A(y_B - y_C) + x_B(y_C - y_A) + x_C(y_A - y_B)|$ \
      $= (1)/(2)|0 + 4(3) + 1(0)| = (12)/(2) = 6$.
    ],
    source: "",
  ),
  (
    title: "Asymptotes",
    difficulty: "medium",
    statement: [
      Find the asymptotes of the hyperbola $(x^2)/(4) - (y^2)/(9) = 1$.
    ],
    answer: $y = (3)/(2) x$,
    solution: [
      For $(x^2)/(a^2) - (y^2)/(b^2) = 1$, asymptotes are $y = plus.minus (b)/(a) x = plus.minus (3)/(2) x$.
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
