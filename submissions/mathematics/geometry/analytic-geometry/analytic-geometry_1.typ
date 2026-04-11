#let n = 1
#let subject = "mathematics"
#let topic = "geometry"
#let subtopic = "Analytic Geometry"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Distance",
    difficulty: "easy",
    statement: [
      Find the distance between points $A(1, 2)$ and $B(4, 6)$.
    ],
    answer: $5$,
    solution: [
      $d = sqrt((4-1)^2 + (6-2)^2) = sqrt(9 + 16) = sqrt(25) = 5$
    ],
    source: "",
  ),
  (
    title: "Midpoint",
    difficulty: "easy",
    statement: [
      Find the midpoint of the segment joining $P(-2, 4)$ and $Q(6, 0)$.
    ],
    answer: $(2, 2)$,
    solution: [
      Midpoint $= ((-2+6)/(2), (4+0)/(2)) = (2, 2)$.
    ],
    source: "",
  ),
  (
    title: "Line equation",
    difficulty: "easy",
    statement: [
      Find the equation of the line with slope $-2$ passing through $(1, 3)$.
    ],
    answer: $y = -2x + 5$,
    solution: [
      $y - 3 = -2(x - 1) => y = -2x + 5$
    ],
    source: "",
  ),
  (
    title: "Circle equation",
    difficulty: "medium",
    statement: [
      Write the equation of a circle with centre $(2, -3)$ and radius $4$.
    ],
    answer: $(x-2)^2 + (y+3)^2 = 16$,
    solution: [
      $(x - h)^2 + (y - k)^2 = r^2$ \
      $(x - 2)^2 + (y + 3)^2 = 16$
    ],
    source: "",
  ),
  (
    title: "Parallel lines",
    difficulty: "easy",
    statement: [
      Are the lines $y = 3x + 1$ and $y = 3x - 5$ parallel? Explain.
    ],
    answer: $"Yes"$,
    solution: [
      Both lines have slope $3$ and different $y$-intercepts, so they are parallel.
    ],
    source: "",
  ),
  (
    title: "Intersection",
    difficulty: "medium",
    statement: [
      Find the intersection of $y = 2x + 1$ and $y = -x + 7$.
    ],
    answer: $(2, 5)$,
    solution: [
      $2x + 1 = -x + 7 => 3x = 6 => x = 2$. $y = 2(2) + 1 = 5$. Point: $(2, 5)$.
    ],
    source: "",
  ),
  (
    title: "Perpendicular",
    difficulty: "medium",
    statement: [
      Find the equation of the line perpendicular to $y = 3x - 2$ passing through $(0, 1)$.
    ],
    answer: $y = -(1)/(3)x + 1$,
    solution: [
      Perpendicular slope: $m = -(1)/(3)$. \
      $y = -(1)/(3)x + 1$.
    ],
    source: "",
  ),
  (
    title: "Vertex",
    difficulty: "medium",
    statement: [
      Find the vertex of the parabola $y = x^2 - 4x + 7$.
    ],
    answer: $(2, 3)$,
    solution: [
      Complete the square: $y = (x-2)^2 - 4 + 7 = (x-2)^2 + 3$. \
      Vertex: $(2, 3)$.
    ],
    source: "",
  ),
  (
    title: "Point-line distance",
    difficulty: "medium",
    statement: [
      Find the distance from the point $(3, 4)$ to the line $4x - 3y + 2 = 0$.
    ],
    answer: $(2)/(5)$,
    solution: [
      $d = (|4(3) - 3(4) + 2|)/(sqrt(16 + 9)) = (|12 - 12 + 2|)/(5) = (2)/(5)$
    ],
    source: "",
  ),
  (
    title: "Slope",
    difficulty: "easy",
    statement: [
      Find the slope of the line through $(-1, 5)$ and $(3, -3)$.
    ],
    answer: $-2$,
    solution: [
      $m = (-3 - 5)/(3 - (-1)) = (-8)/(4) = -2$
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
