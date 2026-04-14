#let n = 1
#let subject = "physics"
#let topic = "thermodynamics"
#let subtopic = "Thermodynamic Processes"
#let contributors = ("brsl", "davidr", "beta_tester", "b_udd_ha")

#let problems = (
  (
    title: "Isothermal",
    difficulty: "medium",
    statement: [
      An ideal gas expands isothermally. During this process, what happens to the internal energy?
    ],
    answer: $Delta U = 0$,
    solution: [
      For an ideal gas, internal energy depends only on temperature. In an isothermal process $Delta T = 0$, so $Delta U = 0$.
    ],
    source: "",
  ),
  (
    title: "Isochoric",
    difficulty: "easy",
    statement: [
      In an isochoric (constant volume) process, how much work is done by the gas?
    ],
    answer: $W = 0$,
    solution: [
      Work done by a gas is $W = P Delta V$. At constant volume, $Delta V = 0$, so $W = 0$.
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
