#let n = 1
#let subject = "mathematics"
#let topic = "calculus"
#let subtopic = "Calculus 1"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Tangent line ",
    difficulty: "medium",
    statement: [
      Let $f(x) = x^3 - 2x$. Find the equation of the tangent line at $x = 1$.
    ],
    answer: $y = x - 2$,
    solution: [
      $f'(x) = 3x^2 - 2$, so $f'(1) = 1$. \
      $f(1) = 1 - 2 = -1$. \
      Tangent line: $y - (-1) = 1(x - 1) => y = x - 2$
    ],
    source: "",
  ),
  (
    title: "Tangent line",
    difficulty: "medium",
    statement: [
      Let $f(x) = 2x^3 + 3x - 7$. Find the equation of the tangent line at $x = 3$.
    ],
    answer: $y = 57x - 115$,
    solution: [
      $f'(x) = 6x^2 + 3$, so $f'(3) = 57$. \
      $f(3) = 2(3)^3 + 3(3)-7 = 56$. \
      Tangent line: $y - (56) = 57(x - 3) => y = 57x - 115$
    ],
    hint: "",
    source: "",
  ),
  (
    title: "Area under a curve",
    difficulty: "medium",
    statement: [
      Let $f(x) = 4x^3 - 5$. Find the area under the curve from $x = 1$ to $x = 3$.
    ],
    answer: $70$,
    solution: [
      $#sym.integral _1^3 (4x^3 - 5) dif x = (3)^4 - 5(3) - ((1)^4 -5(1)) = 66 + 4 = 70$
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
    columns: contributors.len() * (1fr,),
    ..for c in contributors {
      (align(center, text(size: 9pt)[u/#c]),)
    }
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
