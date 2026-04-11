#let n = 1
#let subject = "mathematics"
#let topic = "algebra"
#let subtopic = "Algebra 1"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Linear equation",
    difficulty: "easy",
    statement: [
      Solve for $x$: $3x + 7 = 22$.
    ],
    answer: $x = 5$,
    solution: [
      $3x + 7 = 22$ \
      $3x = 15$ \
      $x = 5$
    ],
    source: "",
  ),
  (
    title: "Expression",
    difficulty: "easy",
    statement: [
      Let $a = 3$ and $b = -2$. Evaluate $2a^2 - 3b + 1$.
    ],
    answer: $25$,
    solution: [
      $2(3)^2 - 3(-2) + 1 = 18 + 6 + 1 = 25$
    ],
    source: "",
  ),
  (
    title: "Two-variable system",
    difficulty: "medium",
    statement: [
      Solve the system of equations and find the sum of the solutions: \
      $2x + y = 7$ \
      $x - y = 2$ \
      x + y = ?
    ],
    answer: $4$,
    solution: [
      Adding both equations: $3x = 9 => x = 3$. \
      Substituting: $3 - y = 2 => y = 1$. \
      Adding them up $1 + 3 = 4$
    ],
    source: "",
  ),
  (
    title: "Quadratic",
    difficulty: "medium",
    statement: [
      Factor the expression: $x^2 - 5x + 6$.
    ],
    answer: $(x - 2)(x - 3)$,
    solution: [
      We look for two numbers that multiply to $6$ and add to $-5$: they are $-2$ and $-3$. \
      So $x^2 - 5x + 6 = (x - 2)(x - 3)$.
    ],
    source: "",
  ),
  (
    title: "Expression",
    difficulty: "easy",
    statement: [
      Simplify: $(4x^2 - 8x/4x)$, for $x != 0$.
    ],
    answer: $x - 2$,
    solution: [
      $(4x^2 - 8x)/(4x) = (4x(x - 2))/(4x) = x - 2$
    ],
    source: "",
  ),
  (
    title: "Substitution",
    difficulty: "easy",
    statement: [
      If $f(x) = 3x^2 - x + 2$, find $f(-1)$.
    ],
    answer: $6$,
    solution: [
      $f(-1) = 3(-1)^2 - (-1) + 2 = 3 + 1 + 2 = 6$
    ],
    source: "",
  ),
  (
    title: "Slope of a line",
    difficulty: "medium",
    statement: [
      Find the slope of the line passing through the points $(1, 3)$ and $(4, 9)$.
    ],
    answer: $m = 2$,
    solution: [
      $m = (9 - 3)/(4 - 1) = 6/3 = 2$
    ],
    source: "",
  ),
  (
    title: "Linear problem",
    difficulty: "medium",
    statement: [
      A store sells notebooks for \$3 each and pens for \$1.50 each. A student buys a total of 10 items and spends \$21. How many notebooks did the student buy?
    ],
    answer: $4$,
    solution: [
      Let $n$ = notebooks, $p$ = pens. \
      $n + p = 10$ and $3n + 1.5p = 21$. \
      From the first equation $p = 10 - n$; substituting: \
      $3n + 1.5(10 - n) = 21 => 1.5n = 6 => n = 4$.
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
