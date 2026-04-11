#let n = 1
#let subject = "mathematics"
#let topic = "vector analysis"
#let subtopic = "Vector Analysis"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Magnitude",
    difficulty: "easy",
    statement: [
      Find the magnitude of the vector $bold(v) = (3, -4, 0)$.
    ],
    answer: $5$,
    solution: [
      $|bold(v)| = sqrt(3^2 + (-4)^2 + 0^2) = sqrt(9 + 16) = 5$
    ],
    source: "",
  ),
  (
    title: "Addition",
    difficulty: "easy",
    statement: [
      Let $bold(a) = (1, 2, 3)$ and $bold(b) = (-1, 4, 0)$. Find $bold(a) + bold(b)$.
    ],
    answer: $(0, 6, 3)$,
    solution: [
      $bold(a) + bold(b) = (1-1, 2+4, 3+0) = (0, 6, 3)$
    ],
    source: "",
  ),
  (
    title: "Dot product",
    difficulty: "easy",
    statement: [
      Compute $bold(a) dot bold(b)$ where $bold(a) = (2, -1, 3)$ and $bold(b) = (4, 0, -2)$.
    ],
    answer: $2$,
    solution: [
      $bold(a) dot bold(b) = 2(4) + (-1)(0) + 3(-2) = 8 + 0 - 6 = 2$
    ],
    source: "",
  ),
  (
    title: "Angle",
    difficulty: "medium",
    statement: [
      Find the angle between $bold(u) = (1, 0, 0)$ and $bold(v) = (1, 1, 0)$.
    ],
    answer: $45°$,
    solution: [
      $cos theta = (bold(u) dot bold(v))/(|bold(u)||bold(v)|) = (1)/(1 dot sqrt(2)) = (1)/(sqrt(2))$. \
      $theta = 45°$.
    ],
    source: "",
  ),
  (
    title: "Unit vector",
    difficulty: "easy",
    statement: [
      Find the unit vector in the direction of $bold(v) = (0, 3, 4)$.
    ],
    answer: $(0, (3)/(5), (4)/(5))$,
    solution: [
      $|bold(v)| = sqrt(0 + 9 + 16) = 5$. \
      $hat(bold(v)) = (0, (3)/(5), (4)/(5))$.
    ],
    source: "",
  ),
  (
    title: "Cross product",
    difficulty: "medium",
    statement: [
      Compute $bold(a) times bold(b)$ where $bold(a) = (1, 0, 0)$ and $bold(b) = (0, 1, 0)$.
    ],
    answer: $(0, 0, 1)$,
    solution: [
      $bold(a) times bold(b) = det mat(bold(i), bold(j), bold(k); 1, 0, 0; 0, 1, 0)$ \
      $= bold(i)(0 - 0) - bold(j)(0 - 0) + bold(k)(1 - 0) = (0, 0, 1)$
    ],
    source: "",
  ),
  (
    title: "Scaling",
    difficulty: "easy",
    statement: [
      Let $bold(v) = (2, -3, 1)$. Compute $3 bold(v)$.
    ],
    answer: $(6, -9, 3)$,
    solution: [
      $3 bold(v) = (3 dot 2, 3 dot (-3), 3 dot 1) = (6, -9, 3)$
    ],
    source: "",
  ),
  (
    title: "Perpendicular",
    difficulty: "medium",
    statement: [
      Are $bold(a) = (2, -3, 1)$ and $bold(b) = (1, 1, 1)$ perpendicular?
    ],
    answer: $"Yes"$,
    solution: [
      $bold(a) dot bold(b) = 2(1) + (-3)(1) + 1(1) = 2 - 3 + 1 = 0$. \
      Since the dot product is $0$, the vectors are perpendicular.
    ],
    source: "",
  ),
  (
    title: "Projection",
    difficulty: "medium",
    statement: [
      Find the scalar projection of $bold(a) = (3, 4)$ onto $bold(b) = (1, 0)$.
    ],
    answer: $3$,
    solution: [
      $"proj" = (bold(a) dot bold(b))/(|bold(b)|) = (3 dot 1 + 4 dot 0)/(1) = 3$
    ],
    source: "",
  ),
  (
    title: "Dependence",
    difficulty: "medium",
    statement: [
      Are vectors $bold(u) = (1, 2)$ and $bold(v) = (2, 4)$ linearly independent?
    ],
    answer: $"No"$,
    solution: [
      $bold(v) = 2 bold(u)$, so one is a scalar multiple of the other. They are linearly dependent.
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
