#let n = 3
#let subject = "mathematics"
#let topic = "geometry"
#let subtopic = "Analytic Geometry"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Locus",
    difficulty: "medium",
    statement: [
      A point moves so that it is always equidistant from $A(0, 2)$ and $B(4, 0)$. Find its locus.
    ],
    answer: $2x - y = 3$,
    solution: [
      Setting $P A = P B$ and squaring: \
      $x^2 + y^2 - 4y + 4 = x^2 - 8x + 16 + y^2$. \
      $8x - 4y = 12 => 2x - y = 3$.
    ],
    source: "",
  ),
  (
    title: "Bisector",
    difficulty: "medium",
    statement: [
      Find the equation of the perpendicular bisector of the segment from $A(2, 4)$ to $B(6, 0)$.
    ],
    answer: $y = x - 2$,
    solution: [
      Midpoint: $(4, 2)$. Slope of $A B$: $(0-4)/(6-2) = -1$. \
      Perpendicular slope: $1$. \
      Equation: $y - 2 = 1(x - 4) => y = x - 2$.
    ],
    source: "",
  ),
  (
    title: "x-intercepts",
    difficulty: "medium",
    statement: [
      Find the $x$-intercepts of $y = x^2 - x - 6$.
    ],
    answer: $x = 3$,
    solution: [
      Set $y = 0$: $x^2 - x - 6 = (x-3)(x+2) = 0$. \
      $x = 3$ or $x = -2$.
    ],
    source: "",
  ),
  (
    title: "Tangent condition",
    difficulty: "medium",
    statement: [
      For what values of $c$ is the line $y = 2x + c$ tangent to the circle $x^2 + y^2 = 5$?
    ],
    answer: $c = plus.minus 5$,
    solution: [
      Substituting and requiring discriminant $= 0$: \
      $5x^2 + 4c x + c^2 - 5 = 0$. \
      $(4c)^2 - 4 dot 5(c^2 - 5) = 0 => -4c^2 + 100 = 0 => c = plus.minus 5$.
    ],
    source: "",
  ),
  (
    title: "Chord length",
    difficulty: "medium",
    statement: [
      A chord of a circle with radius $10$ is at a perpendicular distance of $6$ from the centre. Find the chord length.
    ],
    answer: $16$,
    solution: [
      Half-chord $= sqrt(10^2 - 6^2) = sqrt(64) = 8$. \
      Full chord $= 2 dot 8 = 16$.
    ],
    source: "",
  ),
  (
    title: "Tangent intercept",
    difficulty: "easy",
    statement: [
      The tangent to the circle $x^2 + y^2 = 10$ at the point $(1, 3)$. Find the $y$-intercept.
    ],
    answer: $(10)/(3)$,
    solution: [
      Tangent at $(x_0, y_0)$: $x x_0 + y y_0 = r^2 => x + 3y = 10$. \
      Set $x = 0$: $y = (10)/(3)$.
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
