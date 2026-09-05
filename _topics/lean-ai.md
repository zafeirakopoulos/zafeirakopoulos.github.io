---
layout: topic
title: Lean and AI
description: Use Lean 4 as a training and evaluation ground for machine-learning-guided theorem proving, and study what makes a Lean proof state learnable.
img:
importance: 3
category: topics
related_publications: false
difficulty: difficult
level: [master, phd]
areas: [machine learning, algebra]
topic_category: AI
urgency: 5
---

Interactive theorem provers like Lean produce, as a side effect of ordinary use, a huge amount of structured data: proof states, the tactics that transform them, and the premises (lemmas from Mathlib) used along the way. This has made Lean one of the main testbeds for **machine-learning-guided theorem proving**: models that suggest the next tactic, retrieve a relevant lemma, or search a proof tree, with every candidate step checked by Lean's own kernel.

Unlike most machine learning settings, a wrong answer here is not merely graded low — it fails to compile. This gives the field an unusually clean notion of correctness, and makes Lean a natural place to study what "the model is right" actually means.

## Why it matters

- **Grounded evaluation.** LeanDojo's benchmark of ~100,000 theorem/proof pairs extracted from Mathlib, together with its retrieval-augmented prover (ReProver), gave the field a reproducible way to compare tactic-prediction and premise-selection models against each other.
- **A shared yardstick.** miniF2F translates competition mathematics (AIME, AMC, IMO) into a common benchmark spanning Lean, Isabelle, HOL Light, and Metamath, so that progress in neural theorem proving can be compared across proof assistants, not just within one.
- **Directly relevant to this lab's other Lean topics.** Whatever benchmark or tooling this topic produces can double as evaluation infrastructure for the [Lean and Computer Algebra](/topics/lean-computer-algebra/) and [Lean and Polyhedral Geometry](/topics/lean-polyhedral-geometry/) topics: e.g. can a retrieval-augmented prover close routine lemmas in a new polyhedral-geometry file automatically?

## Targets

**Premise retrieval.** Reproduce a small-scale version of LeanDojo's retrieval-augmented setup: given a proof state, retrieve the Mathlib lemmas most likely to be useful next.

**Benchmark extension.** Extract a small, well-scoped benchmark of proof states from one of this lab's own Lean topics (e.g. the Euclidean-domain or Gröbner-basis formalizations), in the style of miniF2F, and evaluate an existing tactic-prediction model on it.

**Failure analysis.** Characterize where current models fail on this lab's benchmark: is it premise selection, tactic choice, or search depth?

## Goal

Build a small, reproducible evaluation pipeline (data extraction from Lean proofs, an existing or lightly adapted model, and a scoring script) for one machine-learning-for-theorem-proving task, and report where it succeeds and fails.

## Milestones

| ID  | Title                                                       | Due        |
| --- | ----------------------------------------------------------- | ---------- |
| M1  | Environment setup; extract proof states from a Lean project | 2026-12-01 |
| M2  | Baseline model running end-to-end on extracted data         | 2027-01-15 |
| M3  | Evaluation + failure analysis                               | 2027-02-20 |
| M4  | Final report                                                | 2027-03-10 |

## Tasks

| ID  | Title                                                 | Start      | End        | Status |
| --- | ----------------------------------------------------- | ---------- | ---------- | ------ |
| T1  | Set up LeanDojo (or equivalent) data extraction       | 2026-11-05 | 2026-12-01 | todo   |
| T2  | Run a baseline retrieval/tactic model                 | 2026-12-02 | 2027-01-15 | todo   |
| T3  | Build the evaluation benchmark + run failure analysis | 2027-01-16 | 2027-02-20 | todo   |
| T4  | Write-up                                              | 2027-02-21 | 2027-03-10 | todo   |

## Deliverables

- Reproducible pipeline: Lean proof-state extraction, model, and scoring script
- A small benchmark of proof states drawn from this lab's own Lean formalizations
- Final report analyzing where the model succeeds and fails

## Resources

- [Lean 4 documentation](https://leanprover.github.io/)
- [Mathlib4](https://leanprover-community.github.io/mathlib4_docs/)
- [LeanDojo](https://leandojo.org/)

## References

1. K. Yang, A. Swope, A. Gu, R. Chalamala, P. Song, S. Yu, S. Godil, R. Prenger, and A. Anandkumar. _LeanDojo: Theorem Proving with Retrieval-Augmented Language Models._
   NeurIPS 2023, Datasets and Benchmarks Track.
   [proceedings.neurips.cc](https://proceedings.neurips.cc/paper_files/paper/2023/hash/4441469427094f8873d0fecb0c4e1cee-Abstract-Datasets_and_Benchmarks.html)

2. K. Zheng, J. M. Han, and S. Polu. _miniF2F: a cross-system benchmark for formal Olympiad-level mathematics._
   ICLR 2022, OpenReview.net.
   [openreview.net/forum?id=9ZPegFuFTFv](https://openreview.net/forum?id=9ZPegFuFTFv)
