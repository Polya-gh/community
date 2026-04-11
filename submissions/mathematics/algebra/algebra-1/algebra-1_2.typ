#let n = 2




#let subject = "mathematics"
#let topic = "algebra"
#let subtopic = "Algebra 1"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Linear equation",
    difficulty: "easy",
    statement: [
      Solve for $x$: $5x - 3 = 17$.
    ],
    answer: $x = 4$,
    solution: [
      $5x - 3 = 17$ \ 
      $5x = 20$ \
      $x = 4$
    ],
    source: "",
  ),
  (
    title: "Brackets",
    difficulty: "easy",
    statement: [
      Expand and simplify: $(2x + 3)(x - 4)$.
    ],
    answer: $2x^2 - 5x - 12$,
    solution: [
      $(2x + 3)(x - 4) = 2x^2 - 8x + 3x - 12 = 2x^2 - 5x - 12$
    ],
    source: "",
  ),
  (
    title: "Quadratic",
    difficulty: "medium",
    statement: [
      Solve $x^2 + 4x - 12 = 0$ by completing the square.\ Add up the solutions in the end: $x_0 + x_1 = ?$
    ],
    answer: $-4$,
    solution: [
      $x^2 + 4x = 12$ \
      $(x + 2)^2 - 4 = 12 => (x + 2)^2 = 16$ \
      $x + 2 = plus.minus 4 => x = 2 "or" x = -6$ \ 
      adding them up: $2 + (-6) = -4$
    ],
    source: "",
  ),
  (
    title: "Proportions",
    difficulty: "easy",
    statement: [
      If $x/5 = 12/20$, find $x$.
    ],
    answer: $x = 3$,
    solution: [
      Cross-multiplying: $20x = 60 => x = 3$.
    ],
    source: "",
  ),
  (
    title: "Y-intercept",
    difficulty: "easy",
    statement: [
      What is the $y$-intercept of the line $y = -3x + 7$?
    ],
    answer: $(0, 7)$,
    solution: [
      Setting $x = 0$: $y = 7$. The $y$-intercept is $(0, 7)$.
    ],
    source: "",
  ),
  (
    title: "Quadratic formula",
    difficulty: "medium",
    statement: [
      Solve $2x^2 - 5x - 3 = 0$ using the quadratic formula.
    ],
    answer: $x = 3 "or" x = -1/2$,
    solution: [
      $x = {5 plus.minus sqrt{25 + 24}}/{4} = {5 plus.minus 7}/{4}$ \
      $x = 3$ or $x = -1/2$
    ],
    source: "",
  ),
  (
    title: "Absolute value equation",
    difficulty: "medium",
    statement: [
      Solve: $|2x - 4| = 10$. Add up the solutions: \
      $x_0 + x_1 = ?$
    ],
    answer: $4$,
    solution: [
      Case 1: $2x - 4 = 10 => x = 7$. \
      Case 2: $2x - 4 = -10 => x = -3$. \
      Adding them up: $7 + (-3) = 4$
    ],
    source: "",
  ),
  (
    title: "Radicals",
    difficulty: "easy",
    statement: [
      Simplify $sqrt(72)$.
    ],
    answer: $6sqrt(2)$,
    solution: [
      $sqrt(72) = sqrt(36 dot 2) = 6sqrt(2)$
    ],
    source: "",
  ),
  (
    title: "Arithmetic sequences",
    difficulty: "medium",
    statement: [
      The first term of an arithmetic sequence is $4$ and the common difference is $3$. What is the 10th term?
    ],
    answer: $31$,
    solution: [
      $a_n = a_1 + (n-1)d = 4 + 9 dot 3 = 4 + 27 = 31$
    ],
    source: "",
  ),
  (
    title: "Age calculation",
    difficulty: "medium",
    statement: [
      Alice is twice as old as Bob. In 5 years, the sum of their ages will be 49. How old is Alice now?
    ],
    answer: $26$,
    solution: [
      Let Bob's age be $b$, so Alice's age is $2b$. \
      $(2b + 5) + (b + 5) = 49 => 3b = 39 => b = 13$. \
      Alice is $2 dot 13 = 26$.
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
