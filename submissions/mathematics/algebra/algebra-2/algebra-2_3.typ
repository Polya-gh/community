#let n = 3
#let subject = "mathematics"
#let topic = "algebra"
#let subtopic = "Algebra 2"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Polar form",
    difficulty: "medium",
    statement: [
      Write $z = 1 + i$ in polar form $r(cos theta + i sin theta)$.
    ],
    answer: $sqrt(2)(cos(pi/4) + i sin(pi/4))$,
    solution: [
      $r = |z| = sqrt(1+1) = sqrt(2)$. \
      $theta = arctan(1/1) = pi/4$. \
      $z = sqrt(2)(cos(pi/4) + i sin(pi/4))$.
    ],
    source: "",
  ),
  (
    title: "Change of base",
    difficulty: "easy",
    statement: [
      Use the change-of-base formula to compute $log_5 125$.
    ],
    answer: $3$,
    solution: [
      $log_5 125 = (ln 125)/(ln 5) = (3 ln 5)/(ln 5) = 3$
    ],
    source: "",
  ),
  (
    title: "Three equations",
    difficulty: "medium",
    statement: [
      Solve the system: $x + y + z = 6$, $2x - y + z = 3$, $x + 2y - z = 4$.
    ],
    answer: $x = 1$,
    solution: [
      Adding equations 1 and 2: $3x + 2z = 9$. \
      Adding equations 1 and 3: $2x + 3y = 10$. \
      By elimination and back-substitution: $x=1$, $y=2$, $z=3$.
    ],
    source: "",
  ),
  (
    title: "Determinant",
    difficulty: "easy",
    statement: [
      Find the determinant of $mat(3, 5; 1, 2)$.
    ],
    answer: $1$,
    solution: [
      $det = 3 dot 2 - 5 dot 1 = 6 - 5 = 1$
    ],
    source: "",
  ),
  (
    title: "Log laws",
    difficulty: "easy",
    statement: [
      Simplify: $log_2 8 + log_2 4$.
    ],
    answer: $5$,
    solution: [
      $log_2 8 = 3$, $log_2 4 = 2$. \
      Alternatively: $log_2(8 dot 4) = log_2 32 = 5$.
    ],
    source: "",
  ),
  (
    title: "Piecewise",
    difficulty: "medium",
    statement: [
      Let $f(x) = cases(x^2 "if" x < 0, 2x + 1 "if" x >= 0)$. Find $f(-3) + f(2)$.
    ],
    answer: $14$,
    solution: [
      $f(-3) = (-3)^2 = 9$. $f(2) = 2(2) + 1 = 5$. Sum: $9 + 5 = 14$.
    ],
    source: "",
  ),
  (
    title: "Zeros",
    difficulty: "medium",
    statement: [
      Find all zeros of $p(x) = x^3 - 4x$.
    ],
    answer: $x = 0$,
    solution: [
      $p(x) = x(x^2 - 4) = x(x-2)(x+2)$. \
      Zeros: $x = 0$, $x = 2$, $x = -2$.
    ],
    source: "",
  ),
  (
    title: "Series",
    difficulty: "easy",
    statement: [
      Find the sum of the first 20 positive integers.
    ],
    answer: $210$,
    solution: [
      $S = (20(1 + 20))/(2) = (20 dot 21)/(2) = 210$
    ],
    source: "",
  ),
  (
    title: "Interest",
    difficulty: "medium",
    statement: [
      \$1000 is invested at 5% annual interest, compounded annually. What is the value after 3 years?
    ],
    answer: $1157.63$,
    solution: [
      $A = 1000 dot (1.05)^3 = 1000 dot 1.157625 = 1157.63$
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
