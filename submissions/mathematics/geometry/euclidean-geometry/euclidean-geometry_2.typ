#let n = 2
#let subject = "mathematics"
#let topic = "geometry"
#let subtopic = "Euclidean Geometry"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Arc length",
    difficulty: "medium",
    statement: [
      A circle has radius $5$ cm. Find the arc length subtended by a central angle of $72°$.
    ],
    answer: $2 pi$,
    solution: [
      Arc length $= (72)/(360) dot 2 pi r = (1)/(5) dot 10 pi = 2 pi$ cm.
    ],
    source: "",
  ),
  (
    title: "Polygon angles",
    difficulty: "easy",
    statement: [
      Find the sum of interior angles of a hexagon.
    ],
    answer: $720°$,
    solution: [
      Sum $= (n - 2) dot 180° = 4 dot 180° = 720°$.
    ],
    source: "",
  ),
  (
    title: "Isosceles",
    difficulty: "easy",
    statement: [
      An isosceles triangle has a vertex angle of $40°$. Find the base angles.
    ],
    answer: $70°$,
    solution: [
      The two base angles are equal. $2x + 40° = 180° => x = 70°$.
    ],
    source: "",
  ),
  (
    title: "Tangent length",
    difficulty: "medium",
    statement: [
      A tangent from an external point $P$ touches a circle of radius $5$ at point $T$. If $P O = 13$, find $P T$.
    ],
    answer: $12$,
    solution: [
      $O T perp P T$, so by Pythagoras: \
      $P T = sqrt(P O^2 - O T^2) = sqrt(169 - 25) = sqrt(144) = 12$.
    ],
    source: "",
  ),
  (
    title: "Vertical angles",
    difficulty: "easy",
    statement: [
      Two lines intersect. One pair of vertically opposite angles is $(3x + 10)°$ and $(5x - 20)°$. Find $x$.
    ],
    answer: $x = 15$,
    solution: [
      Vertically opposite angles are equal: \
      $3x + 10 = 5x - 20 => 30 = 2x => x = 15$.
    ],
    source: "",
  ),
  (
    title: "Equilateral area",
    difficulty: "medium",
    statement: [
      Find the area of an equilateral triangle with side length $6$.
    ],
    answer: $9 sqrt(3)$,
    solution: [
      $A = (sqrt(3))/(4) s^2 = (sqrt(3))/(4) dot 36 = 9 sqrt(3)$
    ],
    source: "",
  ),
  (
    title: "Alternate angles",
    difficulty: "easy",
    statement: [
      Two parallel lines are cut by a transversal. One alternate interior angle is $65°$. What is the other?
    ],
    answer: $65°$,
    solution: [
      Alternate interior angles are equal when lines are parallel. The other angle is also $65°$.
    ],
    source: "",
  ),
  (
    title: "Circumference",
    difficulty: "easy",
    statement: [
      Find the circumference of a circle with diameter $14$ cm. Leave in terms of $pi$.
    ],
    answer: $14 pi$,
    solution: [
      $C = pi d = 14 pi$ cm.
    ],
    source: "",
  ),
  (
    title: "Cylinder volume",
    difficulty: "medium",
    statement: [
      A cylinder has radius $3$ cm and height $10$ cm. Find its volume in terms of $pi$.
    ],
    answer: $90 pi$,
    solution: [
      $V = pi r^2 h = pi dot 9 dot 10 = 90 pi$ cm³.
    ],
    source: "",
  ),
  (
    title: "Semicircle angle",
    difficulty: "medium",
    statement: [
      $A B$ is a diameter of a circle with centre $O$. Point $C$ lies on the circle. What is $angle A C B$?
    ],
    answer: $90°$,
    solution: [
      Let $angle O A C = angle O C A = alpha$ and $angle O C B = angle O B C = beta$ (isosceles triangles). \
      In triangle $A B C$: $alpha + (alpha + beta) + beta = 180° => 2(alpha + beta) = 180°$. \
      So $angle A C B = alpha + beta = 90°$.
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
