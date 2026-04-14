#let n = 2
#let subject = "mathematics"
#let topic = "algebra"
#let subtopic = "Algebra 2"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Partial fractions",
    difficulty: "medium",
    statement: [
      Decompose into partial fractions: $(5x + 1)/((x+1)(x-2))$.
    ],
    answer: $(4/3)/(x+1) + (11/3)/(x-2)$,
    solution: [
      Write $(5x+1)/((x+1)(x-2)) = A/(x+1) + B/(x-2)$. \
      Then $5x+1 = A(x-2) + B(x+1)$. \
      Setting $x=2$: $11 = 3B => B = 11/3$. \
      Setting $x=-1$: $-4 = -3A => A = 4/3$.
    ],
    source: "",
  ),
  (
    title: "Modulus",
    difficulty: "easy",
    statement: [
      Find $|3 - 4i|$.
    ],
    answer: $5$,
    solution: [
      $|3 - 4i| = sqrt(3^2 + 4^2) = sqrt(9 + 16) = sqrt(25) = 5$
    ],
    source: "",
  ),
  (
    title: "Natural log",
    difficulty: "easy",
    statement: [
      Simplify $ln(e^5)$.
    ],
    answer: $5$,
    solution: [
      $ln(e^5) = 5 dot ln(e) = 5 dot 1 = 5$
    ],
    source: "",
  ),
  (
    title: "Growth",
    difficulty: "medium",
    statement: [
      A population starts at 500 and grows at 4% per year. After how many whole years does it first exceed 1000?
    ],
    answer: $18$,
    solution: [
      $500 dot 1.04^t > 1000 => 1.04^t > 2$ \
      $t > (ln 2)/(ln 1.04) approx 17.7$. \
      After $18$ whole years.
    ],
    source: "",
  ),
  (
    title: "Composition",
    difficulty: "easy",
    statement: [
      If $f(x) = x^2$ and $g(x) = 2x + 1$, find $(f compose g)(3)$.
    ],
    answer: $49$,
    solution: [
      $g(3) = 7$. $(f compose g)(3) = f(7) = 49$.
    ],
    source: "",
  ),
  (
    title: "Remainder",
    difficulty: "medium",
    statement: [
      Find the remainder when $p(x) = x^4 - 3x^2 + 2$ is divided by $(x - 2)$.
    ],
    answer: $6$,
    solution: [
      By the remainder theorem: $p(2) = 2^4 - 3(4) + 2 = 16 - 12 + 2 = 6$.
    ],
    source: "",
  ),
  (
    title: "Discriminant",
    difficulty: "medium",
    statement: [
      For what values of $k$ does $x^2 + k x + 9 = 0$ have exactly one real solution?
    ],
    answer: $k = 6$,
    solution: [
      Discriminant: $k^2 - 36 = 0 => k^2 = 36 => k = plus.minus 6$.
    ],
    source: "",
  ),
  (
    title: "Exponential",
    difficulty: "medium",
    statement: [
      Solve: $2^(x+1) = 5$. Give the answer in terms of $log$.
    ],
    answer: $x = log_2 5 - 1$,
    solution: [
      $x + 1 = log_2 5 => x = log_2 5 - 1$
    ],
    source: "",
  ),
  (
    title: "Sigma",
    difficulty: "easy",
    statement: [
      Evaluate $sum_(k=1)^(4) (2k - 1)$.
    ],
    answer: $16$,
    solution: [
      $k=1: 1$, $k=2: 3$, $k=3: 5$, $k=4: 7$. \
      $1 + 3 + 5 + 7 = 16$.
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
