#let n = 3
#let subject = "mathematics"
#let topic = "geometry"
#let subtopic = "Euclidean Geometry"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Cone volume",
    difficulty: "medium",
    statement: [
      A cone has base radius $4$ cm and height $9$ cm. Find its volume in terms of $pi$.
    ],
    answer: $48 pi$,
    solution: [
      $V = (1)/(3) pi r^2 h = (1)/(3) pi dot 16 dot 9 = 48 pi$ cm³.
    ],
    source: "",
  ),
  (
    title: "Corresponding angles",
    difficulty: "easy",
    statement: [
      Two parallel lines are cut by a transversal. A corresponding angle is $110°$. What is the corresponding angle on the other line?
    ],
    answer: $110°$,
    solution: [
      Corresponding angles are equal when lines are parallel. The angle is also $110°$.
    ],
    source: "",
  ),
  (
    title: "Midpoint theorem",
    difficulty: "medium",
    statement: [
      $M$ and $N$ are midpoints of sides $A B$ and $A C$ of triangle $A B C$. If $B C = 14$, find $M N$.
    ],
    answer: $7$,
    solution: [
      By the midpoint theorem, $M N parallel B C$ and $M N = (1)/(2) B C = 7$.
    ],
    source: "",
  ),
  (
    title: "Sphere area",
    difficulty: "easy",
    statement: [
      Find the surface area of a sphere with radius $6$ cm. Leave in terms of $pi$.
    ],
    answer: $144 pi$,
    solution: [
      $S A = 4 pi r^2 = 4 pi dot 36 = 144 pi$ cm².
    ],
    source: "",
  ),
  (
    title: "Inscribed angle",
    difficulty: "medium",
    statement: [
      An inscribed angle in a circle subtends an arc of $160°$. Find the inscribed angle.
    ],
    answer: $80°$,
    solution: [
      The inscribed angle is half the intercepted arc. \
      Inscribed angle $= (160°)/(2) = 80°$.
    ],
    source: "",
  ),
  (
    title: "Regular polygon",
    difficulty: "easy",
    statement: [
      Find the measure of each interior angle of a regular octagon.
    ],
    answer: $135°$,
    solution: [
      Interior angle $= ((8-2) dot 180°)/(8) = (1080°)/(8) = 135°$.
    ],
    source: "",
  ),
  (
    title: "Sector perimeter",
    difficulty: "medium",
    statement: [
      A sector of a circle has radius $10$ cm and central angle $90°$. Find its perimeter.
    ],
    answer: $20 + 5 pi$,
    solution: [
      Arc length $= (90)/(360) dot 2 pi dot 10 = 5 pi$. \
      Perimeter $= 2r + "arc" = 20 + 5 pi$ cm.
    ],
    source: "",
  ),
  (
    title: "30-60-90",
    difficulty: "easy",
    statement: [
      In a 30-60-90 triangle, the shorter leg has length $4$. Find the hypotenuse.
    ],
    answer: $8$,
    solution: [
      In a 30-60-90 triangle, the hypotenuse is twice the shorter leg. \
      Hypotenuse $= 2 dot 4 = 8$.
    ],
    source: "",
  ),
  (
    title: "Annulus",
    difficulty: "medium",
    statement: [
      Two concentric circles have radii $3$ cm and $7$ cm. Find the area of the region between them.
    ],
    answer: $40 pi$,
    solution: [
      $A = pi R^2 - pi r^2 = pi(49 - 9) = 40 pi$ cm².
    ],
    source: "",
  ),
  (
    title: "Inequality",
    difficulty: "easy",
    statement: [
      Can a triangle have sides of length $3$, $5$, and $9$? Explain.
    ],
    answer: $"No"$,
    solution: [
      Check: $3 + 5 = 8 < 9$. The triangle inequality requires the sum of any two sides to exceed the third. Since $3 + 5 < 9$, no such triangle exists.
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
