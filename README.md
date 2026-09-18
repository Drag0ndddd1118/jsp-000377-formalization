# Formalization of JSP-000377 (Erdős Problem #466)

## Problem Overview

**Catalog ID:** [JSP-000377](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0301-0400.md#JSP-000377)  
**Erdős Problem:** [#466](https://www.erdosproblems.com/466)  
**Mathematical Area:** Number theory / Discrete geometry  

### Problem Statement

Can the size of a planar point set whose pairwise distances all stay away from integers be bounded in terms of the specified parameters?

More precisely, let $N(X, \delta)$ be the maximum cardinality of a finite subset of points in the closed Euclidean disk of radius $X$ in $\mathbb{R}^2$ whose pairwise distances are at least $\delta$ away from every integer. Does there exist $\delta > 0$ such that $N(X, \delta) \to \infty$ as $X \to \infty$?

### Resolution

Ronald Graham resolved this question affirmatively using an explicit parabola construction:
$$P(m) = (2^m, 4^m)$$
Graham proved that the pairwise distances between these points lie strictly between $a + 1/10$ and $a + 9/10$ for suitable integers $a$, establishing that $N(X, 1/10) \to \infty$ as $X \to \infty$.

## Formalization Details

- **Bridge File:** `JSP_000377.lean`
- **Main Module:** `Erdos466.lean`
- **Main Theorem:**
  ```lean
  theorem jsp_000377_solved :
      ∃ δ : ℝ, 0 < δ ∧ Filter.Tendsto (fun X : ℝ ↦ Erdos466.N X δ) Filter.atTop Filter.atTop :=
    Erdos466.erdos_466
  ```
- **Axiom Audit:**
  `#print axioms jsp_000377_solved` depends strictly on standard Lean foundational axioms:
  ```lean
  [propext, Classical.choice, Quot.sound]
  ```
  **Zero** unproved hypotheses, zero `sorry`, zero `admit`.

## Build & Verification Instructions

### Toolchain
- **Lean:** `leanprover/lean4:v4.33.0`
- **Mathlib:** `v4.33.0`

### Build
```bash
lake exe cache get
lake build
```

## Attribution & Provenance
- **Mathematical Solution:** Ronald Graham.
- **Formal Authors:** OpenAI Codex and GPT-5.6 Sol, with original proof in `plby/lean-proofs`.
- **Packaging & Verification:** Maintained and verified by 赵钦 (Qin Zhao, GitHub: [@Drag0ndddd1118](https://github.com/Drag0ndddd1118)).
