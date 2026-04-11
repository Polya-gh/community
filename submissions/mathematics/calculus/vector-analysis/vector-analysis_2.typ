#let n = 2
#let subject = "mathematics"
#let topic = "vector analysis"
#let subtopic = "Vector Analysis"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Gradient",
    difficulty: "medium",
    statement: [
      Find the gradient of $f(x, y, z) = x^2 y + y z^2$ at the point $(1, 2, 1)$.
    ],
    answer: $(4, 2, 4)$,
    solution: [
      $nabla f = (2x y, x^2 + z^2, 2y z)$. \
      At $(1, 2, 1)$: $(2 dot 1 dot 2, 1 + 1, 2 dot 2 dot 1) = (4, 2, 4)$.
    ],
    source: "",
  ),
  (
    title: "Divergence",
    difficulty: "medium",
    statement: [
      Find the divergence of $bold(F) = (x^2, y^2, z^2)$.
    ],
    answer: $2x + 2y + 2z$,
    solution: [
      $nabla dot bold(F) = (diff F_1)/(diff x) + (diff F_2)/(diff y) + (diff F_3)/(diff z) = 2x + 2y + 2z$
    ],
    source: "",
  ),
  (
    title: "Subtraction",
    difficulty: "easy",
    statement: [
      Let $bold(p) = (5, 1, -2)$ and $bold(q) = (3, -1, 2)$. Find $bold(p) - bold(q)$.
    ],
    answer: $(2, 2, -4)$,
    solution: [
      $bold(p) - bold(q) = (5-3, 1-(-1), -2-2) = (2, 2, -4)$
    ],
    source: "",
  ),
  (
    title: "Parallelogram",
    difficulty: "medium",
    statement: [
      Find the area of the parallelogram spanned by $bold(a) = (1, 3, 0)$ and $bold(b) = (2, 0, 0)$.
    ],
    answer: $6$,
    solution: [
      $bold(a) times bold(b) = det mat(bold(i), bold(j), bold(k); 1, 3, 0; 2, 0, 0) = (0, 0, -6)$. \
      Area $= |bold(a) times bold(b)| = 6$.
    ],
    source: "",
  ),
  (
    title: "Position vector",
    difficulty: "easy",
    statement: [
      A point $P$ has coordinates $(4, -2, 7)$. Find the magnitude of its position vector.
    ],
    answer: $sqrt(69)$,
    solution: [
      $|bold(r)| = sqrt(16 + 4 + 49) = sqrt(69)$
    ],
    source: "",
  ),
  (
    title: "Triple product",
    difficulty: "medium",
    statement: [
      Compute the scalar triple product $bold(a) dot (bold(b) times bold(c))$ for $bold(a) = (1,0,0)$, $bold(b) = (0,1,0)$, $bold(c) = (0,0,1)$.
    ],
    answer: $1$,
    solution: [
      $bold(b) times bold(c) = (1,0,0)$. \
      $bold(a) dot (1,0,0) = 1$.
    ],
    source: "",
  ),
  (
    title: "Curl",
    difficulty: "medium",
    statement: [
      Find the curl of $bold(F) = (y, -x, 0)$.
    ],
    answer: $(0, 0, -2)$,
    solution: [
      $nabla times bold(F) = det mat(bold(i), bold(j), bold(k); diff_x, diff_y, diff_z; y, -x, 0)$ \
      $= bold(i)(0 - 0) - bold(j)(0 - 0) + bold(k)(-1 - 1) = (0, 0, -2)$
    ],
    source: "",
  ),
  (
    title: "Perpendicular",
    difficulty: "easy",
    statement: [
      Show that $bold(a) = (1, -1, 0)$ and $bold(b) = (1, 1, 0)$ are perpendicular.
    ],
    answer: $bold(a) dot bold(b) = 0$,
    solution: [
      $bold(a) dot bold(b) = 1(1) + (-1)(1) + 0(0) = 1 - 1 = 0$. \
      Since the dot product is zero, the vectors are perpendicular.
    ],
    source: "",
  ),
  (
    title: "Line form",
    difficulty: "medium",
    statement: [
      Write the vector equation of the line through $A(1, 2, 3)$ in direction $bold(d) = (1, -1, 2)$.
    ],
    answer: $bold(r) = (1,2,3) + t(1,-1,2)$,
    solution: [
      $bold(r) = bold(a) + t bold(d)$, so: \
      $bold(r) = (1, 2, 3) + t(1, -1, 2)$, $t in RR$.
    ],
    source: "",
  ),
  (
    title: "Components",
    difficulty: "easy",
    statement: [
      A 2D vector has magnitude $5$ and makes an angle of $30°$ with the positive $x$-axis. Find its $y$-component.
    ],
    answer: $(5)/(2)$,
    solution: [
      $v_x = 5 cos 30° = (5 sqrt(3))/(2)$. \
      $v_y = 5 sin 30° = 5 dot (1)/(2) = (5)/(2)$.
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
