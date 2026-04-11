#let n = 3
#let subject = "mathematics"
#let topic = "algebra"
#let subtopic = "Algebra 1"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Linear equation",
    difficulty: "medium",
    statement: [
      Solve for $x$: $(2x + 1)/(3) = (x - 2)/(2)$.
    ],
    answer: $x = -8$,
    solution: [
      Cross-multiplying: $2(2x + 1) = 3(x - 2)$ \
      $4x + 2 = 3x - 6$ \
      $x = -8$
    ],
    source: "",
  ),
  (
    title: "Exponents",
    difficulty: "easy",
    statement: [
      Simplify: $(x^5 dot x^3)/(x^4)$.
    ],
    answer: $x^4$,
    solution: [
      $(x^(5+3))/(x^4) = (x^8)/(x^4) = x^(8-4) = x^4$
    ],
    source: "",
  ),
  (
    title: "Substitution",
    difficulty: "medium",
    statement: [
      Solve: $y = 2x - 1$ and $3x + y = 14$.
    ],
    answer: $x = 3$,
    solution: [
      Substitute $y = 2x - 1$ into $3x + y = 14$: \
      $3x + 2x - 1 = 14 => 5x = 15 => x = 3$. \
      Then $y = 2(3) - 1 = 5$.
    ],
    source: "",
  ),
  (
    title: "Rationals",
    difficulty: "easy",
    statement: [
      Is $p/q$ always rational when $p$ and $q$ are integers and $q != 0$? Give one example.
    ],
    answer: $3/4 = 0.75$,
    solution: [
      By definition, a rational number is any number expressible as $p/q$ with $p, q in ZZ$ and $q != 0$. For example, $3/4 = 0.75$.
    ],
    source: "",
  ),
  (
    title: "Factoring",
    difficulty: "easy",
    statement: [
      Factor: $9x^2 - 16$.
    ],
    answer: $(3x - 4)(3x + 4)$,
    solution: [
      $9x^2 - 16 = (3x)^2 - 4^2 = (3x - 4)(3x + 4)$
    ],
    source: "",
  ),
  (
    title: "Sequences",
    difficulty: "medium",
    statement: [
      The first term of a geometric sequence is $2$ and the common ratio is $3$. What is the 5th term?
    ],
    answer: $162$,
    solution: [
      $a_5 = 2 dot 3^(5-1) = 2 dot 81 = 162$
    ],
    source: "",
  ),
  (
    title: "Rearranging",
    difficulty: "easy",
    statement: [
      The formula for the area of a rectangle is $A = l dot w$. Solve for $l$.
    ],
    answer: $l = A/w$,
    solution: [
      Divide both sides by $w$: $l = A/w$.
    ],
    source: "",
  ),
  (
    title: "Inequality",
    difficulty: "medium",
    statement: [
      Solve: $-3x + 6 >= 0$.
    ],
    answer: $x <= 2$,
    solution: [
      $-3x >= -6$ \
      Dividing by $-3$ (flip the inequality): $x <= 2$.
    ],
    source: "",
  ),
  (
    title: "Simplification",
    difficulty: "medium",
    statement: [
      Simplify: $(x^2 - 9)/(x + 3)$, for $x != -3$.
    ],
    answer: $x - 3$,
    solution: [
      $((x-3)(x+3))/(x+3) = x - 3$
    ],
    source: "",
  ),
  (
    title: "Mixture",
    difficulty: "medium",
    statement: [
      A chemist mixes 20 mL of a 30% acid solution with 30 mL of a 50% acid solution. What is the concentration of the resulting mixture?
    ],
    answer: $42%$,
    solution: [
      Total acid: $0.30 dot 20 + 0.50 dot 30 = 6 + 15 = 21$ mL. \
      Total volume: $50$ mL. \
      Concentration: $(21)/(50) = 0.42 = 42%$.
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
