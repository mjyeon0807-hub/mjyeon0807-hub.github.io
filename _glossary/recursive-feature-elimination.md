---
title: "Recursive Feature Elimination"
term_id: recursive-feature-elimination
category: concepts
related: []
sources: [pandya-2026-plasma-lung-signature]
---

Recursive feature elimination (RFE) is a machine-learning feature-selection method that starts with a full set of candidate predictor variables, repeatedly trains a model, and removes the least-important variable(s) at each round until a smaller, more parsimonious subset remains. It is commonly used to distill large, high-dimensional datasets (such as proteomic or genomic panels with thousands of measured features) down to a compact, interpretable predictive signature suitable for validation and eventual clinical use.
