#let n = 1
#let subject = "mathematics"
#let topic = "algebra"
#let subtopic = "Algebra 2"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Division",
    difficulty: "medium",
    statement: [
      Divide $2x^3 - 3x^2 + x - 5$ by $x - 2$ using synthetic division.
    ],
    answer: $2x^2 + x + 3$,
    solution: [
      Coefficients: $2, -3, 1, -5$. Root: $2$. \
      Bring down $2$; $2 dot 2 = 4$; $-3 + 4 = 1$; $1 dot 2 = 2$; $1 + 2 = 3$; $3 dot 2 = 6$; $-5 + 6 = 1$. \
      Quotient: $2x^2 + x + 3$, remainder $1$.
    ],
    source: "",
  ),
  (
    title: "Complex addition",
    difficulty: "easy",
    statement: [
      Compute $(3 + 2i) + (1 - 5i)$.
    ],
    answer: $4 - 3i$,
    solution: [
      Real parts: $3 + 1 = 4$. Imaginary parts: $2 - 5 = -3$. \
      Result: $4 - 3i$.
    ],
    source: "",
  ),
  (
    title: "Logarithms",
    difficulty: "easy",
    statement: [
      Evaluate $log_2 64$.
    ],
    answer: $6$,
    solution: [
      $2^x = 64 = 2^6 => x = 6$.
    ],
    source: "",
  ),
  (
    title: "Exponential",
    difficulty: "medium",
    statement: [
      Solve: $3^(2x) = 81$.
    ],
    answer: $x = 2$,
    solution: [
      $81 = 3^4$, so $3^(2x) = 3^4 => 2x = 4 => x = 2$.
    ],
    source: "",
  ),
  (
    title: "Domain",
    difficulty: "easy",
    statement: [
      Find the domain of $f(x) = 1/(x^2 - 4)$.
    ],
    answer: $x != plus.minus 2$,
    solution: [
      The denominator is zero when $x^2 - 4 = 0$, i.e., $x = plus.minus 2$. \
      Domain: $RR without {-2, 2}$.
    ],
    source: "",
  ),
  (
    title: "Binomial",
    difficulty: "medium",
    statement: [
      Expand $(x + 2)^3$ using the binomial theorem.
    ],
    answer: $x^3 + 6x^2 + 12x + 8$,
    solution: [
      $(x+2)^3 = binom(3,0)x^3 + binom(3,1)x^2(2) + binom(3,2)x(4) + binom(3,3)(8)$ \
      $= x^3 + 6x^2 + 12x + 8$
    ],
    source: "",
  ),
  (
    title: "Log equation",
    difficulty: "medium",
    statement: [
      Solve: $log_3(x + 1) = 2$.
    ],
    answer: $x = 8$,
    solution: [
      $x + 1 = 3^2 = 9 => x = 8$.
    ],
    source: "",
  ),
  (
    title: "Complex product",
    difficulty: "easy",
    statement: [
      Compute $(2 + i)(3 - 2i)$.
    ],
    answer: $8 - i$,
    solution: [
      $(2)(3) + (2)(-2i) + (i)(3) + (i)(-2i)$ \
      $= 6 - 4i + 3i - 2i^2 = 6 - i + 2 = 8 - i$
    ],
    source: "",
  ),
  (
    title: "Inverse",
    difficulty: "medium",
    statement: [
      Find the inverse of $f(x) = 2x + 5$.
    ],
    answer: $f^(-1)(x) = (x-5)/2$,
    solution: [
      Let $y = 2x + 5$. Swap $x$ and $y$: $x = 2y + 5$. \
      Solve for $y$: $y = (x - 5)/2$.
    ],
    source: "",
  ),
  (
    title: "Series sum",
    difficulty: "medium",
    statement: [
      Find the sum of the first 6 terms of the geometric series with first term $1$ and ratio $2$.
    ],
    answer: $63$,
    solution: [
      $S_6 = (1(2^6 - 1))/(2 - 1) = 64 - 1 = 63$
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
