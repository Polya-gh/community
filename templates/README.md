# Templates

Official templates for writing Polya problem sheets.

Alternatively, submit problems via the form at [polya.live/contribute](https://polya.live/contribute), no git knowledge required.

---

## Files

| File | Format |
|---|---|
| `polya_problem_sheet.tex` | LaTeX |
| `polya_problem_sheet.typ` | Typst |

---

## Custom Templates

Coming soon.

---

## Required Variables
 
### Polya problem sheet
Defined once per file.
 
| Variable | Required | Valid Values |
|---|---|---|
| `subject` | ✓ | `mathematics`, `physics` |
| `topic` | ✓ | e.g. `calculus`, `mechanics` |
| `subtopic` | ✓ | e.g. `calculus 1`, `linear motion` |
| `contributors` | ✓ | Array of Polya usernames, e.g. `[brsl, bendeguz06]` |
 
### Polya problem
Defined for every problem in the sheet.
 
| Variable | Required | Valid Values |
|---|---|---|
| `title` | ✓ | Any string |
| `difficulty` | ✓ | `easy`, `medium`, `hard`, `ipho`, `imo` |
| `points` | ✓ | `80`, `150`, `250`, `400` |
| `statement` | ✓ | Math markup string |
| `answer` | ✓ | Exact number or expression |
| `solution` | ✓ | Full worked out solution |
| `source` | — | Competition or textbook citation |
 
---
## Difficulty Guide

| Level | Description | Points |
|---|---|---|
| `easy` | Direct application | 80 |
| `medium` | Two or more concepts combined | 150 |
| `hard` | Non-obvious, competition-level | 250 |
| `ipho` / `imo` | IPhO / IMO difficulty | 400 |
