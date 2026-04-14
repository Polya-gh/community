#let n = 3
#let subject = "physics"
#let topic = "thermodynamics"
#let subtopic = "Thermodynamic Processes"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Free expansion",
    difficulty: "easy",
    statement: [
      An ideal gas undergoes free expansion into a vacuum. What is the work done and the change in internal energy?
    ],
    answer: $W = 0$,
    solution: [
      In free expansion into vacuum, $P_"ext" = 0$ so $W = 0$. No heat is exchanged ($Q = 0$). By first law: $Delta U = 0$.
    ],
    source: "",
  ),
  (
    title: "Refrigerator",
    difficulty: "medium",
    statement: [
      A refrigerator operates between $270$ K and $300$ K. What is the maximum COP?
    ],
    answer: $9$,
    solution: [
      $"COP"_"max" = (T_C)/(T_H - T_C) = (270)/(300 - 270) = (270)/(30) = 9$.
    ],
    source: "",
  ),
  (
    title: "Reversible",
    difficulty: "easy",
    statement: [
      What is the entropy change of the universe in a perfectly reversible process?
    ],
    answer: $Delta S = 0$,
    solution: [
      In a reversible process, the total entropy change of the universe is zero: $Delta S_"universe" = 0$.
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
