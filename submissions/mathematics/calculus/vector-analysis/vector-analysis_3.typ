#let n = 3
#let subject = "mathematics"
#let topic = "vector analysis"
#let subtopic = "Vector Analysis"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Line integral",
    difficulty: "medium",
    statement: [
      Let $bold(F) = (y, x)$ and $C$ be the segment from $(0,0)$ to $(1,1)$. Parameterise and set up the line integral $integral_C bold(F) dot dif bold(r)$.
    ],
    answer: $integral_0^1 2t dif t$,
    solution: [
      Parameterise: $bold(r)(t) = (t, t)$, $t in [0,1]$, so $dif bold(r) = (1, 1) dif t$. \
      $bold(F)(bold(r)(t)) = (t, t)$. \
      $bold(F) dot dif bold(r) = (t + t) dif t = 2t dif t$.
    ],
    source: "",
  ),
  (
    title: "Plane equation",
    difficulty: "medium",
    statement: [
      Find the equation of the plane through $A(1,0,0)$, $B(0,1,0)$, $C(0,0,1)$.
    ],
    answer: $x + y + z = 1$,
    solution: [
      Vectors in the plane: $bold(A B) = (-1,1,0)$ and $bold(A C) = (-1,0,1)$. \
      Normal: $bold(n) = bold(A B) times bold(A C) = (1, 1, 1)$. \
      Equation: $(x-1) + y + z = 0 => x + y + z = 1$.
    ],
    source: "",
  ),
  (
    title: "Cross magnitude",
    difficulty: "medium",
    statement: [
      Find $|bold(a) times bold(b)|$ if $|bold(a)| = 3$, $|bold(b)| = 4$, and the angle between them is $30°$.
    ],
    answer: $6$,
    solution: [
      $|bold(a) times bold(b)| = |bold(a)||bold(b)| sin theta = 3 dot 4 dot sin 30° = 12 dot (1)/(2) = 6$
    ],
    source: "",
  ),
  (
    title: "Directional derivative",
    difficulty: "medium",
    statement: [
      Find the directional derivative of $f(x,y) = x^2 + y^2$ at $(1, 1)$ in direction $bold(u) = ((1)/(sqrt(2)), (1)/(sqrt(2)))$.
    ],
    answer: $2 sqrt(2)$,
    solution: [
      $nabla f = (2x, 2y) = (2, 2)$ at $(1,1)$. \
      Directional derivative $= nabla f dot bold(u) = 2 dot (1)/(sqrt(2)) + 2 dot (1)/(sqrt(2)) = (4)/(sqrt(2)) = 2 sqrt(2)$.
    ],
    source: "",
  ),
  (
    title: "Point-plane distance",
    difficulty: "medium",
    statement: [
      Find the distance from $P(1, 2, 3)$ to the plane $2x - y + 2z = 4$.
    ],
    answer: $(2)/(3)$,
    solution: [
      $d = (|2(1) - 2 + 2(3) - 4|)/(sqrt(4+1+4)) = (|2 - 2 + 6 - 4|)/(3) = (2)/(3)$
    ],
    source: "",
  ),
  (
    title: "Plane normal",
    difficulty: "easy",
    statement: [
      A plane has normal vector $bold(n) = (1, -2, 3)$ and passes through the point $(2, 1, 0)$. Write its equation.
    ],
    answer: $x - 2y + 3z = 0$,
    solution: [
      $bold(n) dot (bold(r) - bold(r)_0) = 0$ \
      $(x-2) + (-2)(y-1) + 3(z) = 0$ \
      $x - 2y + 3z = 0$
    ],
    source: "",
  ),
  (
    title: "Work",
    difficulty: "easy",
    statement: [
      A force $bold(F) = (3, 4, 0)$ N acts on an object displaced by $bold(d) = (2, 0, 5)$ m. Find the work done.
    ],
    answer: $6$,
    solution: [
      $W = bold(F) dot bold(d) = 3(2) + 4(0) + 0(5) = 6$ J.
    ],
    source: "",
  ),
  (
    title: "Planes angle",
    difficulty: "medium",
    statement: [
      Find the angle between the planes $x + y + z = 1$ and $x - y + z = 3$.
    ],
    answer: $arccos((1)/(3))$,
    solution: [
      Normals: $bold(n_1) = (1,1,1)$, $bold(n_2) = (1,-1,1)$. \
      $cos theta = (bold(n_1) dot bold(n_2))/(|bold(n_1)||bold(n_2)|) = (1 - 1 + 1)/(sqrt(3) dot sqrt(3)) = (1)/(3)$. \
      $theta = arccos((1)/(3))$.
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
