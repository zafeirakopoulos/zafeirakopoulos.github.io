---
layout: topic
title: Math Data
description: A system for representing, storing, and sharing mathematical objects and benchmarks.
img:
importance: 4
category: topics
related_publications: false
difficulty: normal
level: [master, phd]
areas: [algebra, combinatorics, optimization]
urgency: 6
---

Modern science produces increasingly large volumes of data consisting of mathematical (structured) objects.
Despite this trend there is no standard way of representing mathematical data.
Each group develops in-house formats adequate for their particular application, making data sharing and reuse costly.

The mathdata project addresses several fundamental problems:

1. **Reinventing the wheel** — existing data is reproduced each time instead of reused.
2. **Babel effect** — knowledge about the same object from different sources is hard to combine.
3. **Modern tools** — the math community cannot leverage modern data storage and analytic methods.
4. **Credibility** — self-selected benchmarks reduce the credibility of algorithm comparisons.
5. **Reproducibility** — results cannot be independently reproduced if data is not shareable.

## Goals

- Develop a language (MathDataLang) for describing mathematical data
- Implement a database of mathdata objects
- Build a system for automatic benchmarking
- Create a community around MathData

## Project Parts

**Authentication** — owner, editor, user, and external roles; LDAP and cross-database authentication.

**Backend** — git-based storage for reproducibility; scalable distributed architecture.

**Frontend** — web interface for querying and submitting data.

**DataSanitizer** — validates instances against MathDataLang definitions.

## Resources

- Repo: [math-data](https://github.com/zafeirakopoulos/math-data)
- Related: [OpenMath](https://openmath.org/), [MathML](https://en.wikipedia.org/wiki/MathML), [OEIS](https://oeis.org/)

## Plan

```mermaid
gantt
  title mathdata — Plan
  dateFormat  YYYY-MM-DD
  axisFormat  %b %d
  Schema draft                  :done,   m1, 2025-11-01, 2025-11-10
  Canonical forms + hashing    :active, m2, 2025-11-11, 2025-12-20
  Serializers & round-trips    :        m3, 2025-12-21, 2026-01-30
  Integration demos            :        m4, 2026-01-31, 2026-02-28
```
