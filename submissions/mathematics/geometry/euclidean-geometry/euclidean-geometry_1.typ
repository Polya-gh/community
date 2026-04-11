#let n = 1
#let subject = "mathematics"
#let topic = "geometry"
#let subtopic = "Euclidean Geometry"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Triangle angles",
    difficulty: "easy",
    statement: [
      A triangle has angles $50°$ and $70°$. What is the third angle?
    ],
    answer: $60°$,
    solution: [
      Sum of angles in a triangle is $180°$. \
      Third angle $= 180° - 50° - 70° = 60°$.
    ],
    source: "",
  ),
  (
    title: "Perimeter",
    difficulty: "easy",
    statement: [
      A rectangle has length $8$ cm and width $5$ cm. Find its perimeter.
    ],
    answer: $26$,
    solution: [
      $P = 2(l + w) = 2(8 + 5) = 2 dot 13 = 26$ cm.
    ],
    source: "",
  ),
  (
    title: "Hypotenuse",
    difficulty: "easy",
    statement: [
      A right triangle has legs of length $6$ and $8$. Find the hypotenuse.
    ],
    answer: $10$,
    solution: [
      $c = sqrt(6^2 + 8^2) = sqrt(36 + 64) = sqrt(100) = 10$
    ],
    source: "",
  ),
  (
    title: "Circle area",
    difficulty: "easy",
    statement: [
      Find the area of a circle with radius $r = 7$ cm. Leave your answer in terms of $pi$.
    ],
    answer: $49 pi$,
    solution: [
      $A = pi r^2 = pi dot 49 = 49 pi$ cm².
    ],
    source: "",
  ),
  (
    title: "Congruence",
    difficulty: "medium",
    statement: [
      Two triangles have two sides of lengths $5$ and $7$, with an included angle of $60°$ each. Are the triangles congruent? State the criterion used.
    ],
    answer: $"SAS"$,
    solution: [
      Two sides and the included angle are equal, so the triangles are congruent by the SAS (Side-Angle-Side) criterion.
    ],
    source: "",
  ),
  (
    title: "Exterior angle",
    difficulty: "medium",
    statement: [
      An exterior angle of a triangle measures $120°$. One of the non-adjacent interior angles is $45°$. Find the other non-adjacent interior angle.
    ],
    answer: $75°$,
    solution: [
      By the exterior angle theorem, the exterior angle equals the sum of the two non-adjacent interior angles. \
      $45° + x = 120° => x = 75°$.
    ],
    source: "",
  ),
  (
    title: "Similar triangles",
    difficulty: "medium",
    statement: [
      Two similar triangles have corresponding sides in the ratio $2:5$. If the smaller triangle has a side of length $6$, what is the corresponding side of the larger?
    ],
    answer: $15$,
    solution: [
      $(6)/(x) = (2)/(5) => x = (6 dot 5)/(2) = 15$.
    ],
    source: "",
  ),
  (
    title: "Straight line",
    difficulty: "easy",
    statement: [
      Two angles on a straight line are in the ratio $1:3$. Find the larger angle.
    ],
    answer: $135°$,
    solution: [
      Let the angles be $x$ and $3x$. $x + 3x = 180° => x = 45°$. \
      The larger angle is $3 dot 45° = 135°$.
    ],
    source: "",
  ),
  (
    title: "Diagonal",
    difficulty: "medium",
    statement: [
      A rectangle has length $9$ and width $12$. Find the length of its diagonal.
    ],
    answer: $15$,
    solution: [
      $d = sqrt(9^2 + 12^2) = sqrt(81 + 144) = sqrt(225) = 15$
    ],
    source: "",
  ),
  (
    title: "Trapezoid area",
    difficulty: "medium",
    statement: [
      A trapezoid has parallel sides of length $6$ and $10$, and a height of $4$. Find its area.
    ],
    answer: $32$,
    solution: [
      $A = ((b_1 + b_2))/(2) dot h = ((6 + 10))/(2) dot 4 = 8 dot 4 = 32$
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
