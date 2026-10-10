import Mathlib

open Filter Metric Set

namespace JSP000377

noncomputable section

/-- The Euclidean plane. -/
abbrev Plane := EuclideanSpace ℝ (Fin 2)

/-- Distance of a real number to the nearest integer. -/
def distToInt (x : ℝ) : ℝ := |x - (round x : ℝ)|

/-- `Realizable X δ n` says that `n` distinct indexed points fit in some
closed disk of radius `X`, with every pairwise distance at least `δ` away
from the nearest integer. -/
def Realizable (X δ : ℝ) (n : ℕ) : Prop :=
  ∃ (c : Plane) (P : Fin n → Plane), Function.Injective P ∧
    (∀ i, P i ∈ closedBall c X) ∧
    ∀ i j, i ≠ j → δ ≤ distToInt (dist (P i) (P j))

/-- The set of cardinalities of admissible configurations. -/
def admissibleSizes (X δ : ℝ) : Set ℕ := {n | Realizable X δ n}

/-- The maximum cardinality in Erdős Problem 466. -/
def N (X δ : ℝ) : ℕ := sSup (admissibleSizes X δ)

/-- Formal problem statement for JSP-000377 (Erdős Problem #466).
"Can the size of a planar point set whose distances all stay away from integers be bounded in terms of the specified parameters?"
Graham (1976) proved that for some positive δ, N(X, δ) tends to infinity as X → ∞. -/
def jsp000377Statement : Prop :=
  ∃ δ : ℝ, 0 < δ ∧ Tendsto (fun X : ℝ ↦ N X δ) atTop atTop

end

end JSP000377
